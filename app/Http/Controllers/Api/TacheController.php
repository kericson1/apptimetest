<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\Tache;
use App\Models\Projet;
use Auth;
use DB;
use Illuminate\Http\Request;

class TacheController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $taches = Tache::with('projeta')->where('supprime_tache', '=', '0');

        return response()->json($taches);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validation du formulaire
        $rules = [
            'nom_tache' => 'required',
            'date_debut' => 'required|date',
            'date_fin' => 'required|date|after_or_equal:date_debut_tache',
            //            'user_id' => 'required',
        ];

        $customMessages = [
            'nom_tache.required' => 'Veuillez entrer le nom de la tâche',
            'date_debut.required' => 'Veuillez choisir la date de début',
            //            'date_debut_tache.after_or_equal' => 'La date de début de tache doit être supérieur ou égal à la date début du projet',
            'date_fin.required' => 'Veuillez choisir la date de fin',
            'date_fin.after_or_equal' => 'La date de fin de la tache doit être superieur ou égal à la date début de la tache',
            //             'date_fin_tache.before_or_equal' => 'La date de fin de la tache doit être inférieur ou égal à la date de fin du projet',
            //            'user_id.required' => 'Veuillez selectionnez le responsable de latache',
        ];

        $this->validate($request, $rules, $customMessages);

        // Heure total
        $ddate = $request->date_debut;
        $fdate = $request->date_fin;

        //            if ($ddate >= $test && $ddate < $test2 && $fdate >= $test && $fdate < $test2) {
        $debut_jour = intval(date('d', strtotime($ddate)));
        $debut_mois = intval(date('m', strtotime($ddate)));
        $debut_annee = intval(date('Y', strtotime($ddate)));

        $fin_jour = intval(date('d', strtotime($fdate)));
        $fin_mois = intval(date('m', strtotime($fdate)));
        $fin_annee = intval(date('Y', strtotime($fdate)));

        $debut_date = mktime(0, 0, 0, $debut_mois, $debut_jour, $debut_annee);
        $fin_date = mktime(0, 0, 0, $fin_mois, $fin_jour, $fin_annee);
        $ind = 0;
        $j = 0;

        for ($i = $debut_date; $i <= $fin_date; $i += 86400) {
            $ind += 1;
            $jour = date("l", $i);
            if ($jour == 'Saturday' || $jour == 'Sunday') {
                $j += 1;
            }
        }
        $jourouvre = $ind - $j;
        $heure_total_tache = $jourouvre * 8;


        // Création de la tâche dans la bdd
        $taches = new Tache();
        $taches->nom_tache = $request->nom_tache;
        $taches->date_debut_tache = $request->date_debut;
        $taches->date_fin_tache = $request->date_fin;
        $taches->id_projet = $request->projet;
        $taches->statut = 0;
        $taches->heure_total_tache = $heure_total_tache;
        $taches->save();

        $equipe = $request['users_team'];

        // Liaison Tache équipe
        $taches->utilisateurs()->attach($equipe);

        return response()->json(
            [
                'message' => 'Taches enregistré',
                'code' => 200
            ]
        );
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Tache $tache
     * @return \Illuminate\Http\Response
     */
    public function show(Tache $tache)
    {
        //
    }

    public function edit($id_tache)
    {
        $taches = Tache::findOrFail($id_tache);
        return response()->json($taches);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Tache $tache
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->nom_tache = request('nom_tache');
        $taches->date_debut_tache = request('date_debut');
        $taches->date_fin_tache = request('date_fin');
        $taches->save();

        return response()->json($taches);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Tache $tache
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->supprime_conge = 1;
        $taches->save();
        //        $taches->utilisateurs()->detach($taches);
        //        $taches->delete();

        return response()->json($taches);
    }

    public function assign(Request $request, $id_tache)
    {
        //Recuperer les membres de cette tâche
        $membres = Tache::find($id_tache)->utilisateurs;
        foreach ($membres as $ah) {
            $enfin[] = $ah->id;
        }

        $equipe = $request['users_team'];


        //Verifier si le membre appartient déjà à la tâche
        $compare = array_diff($equipe, $enfin);

        //Element unique
        $unique = array_unique($compare);

        //Compter le nombre d'elemnt dans le tableau
        $compte = count($compare);

        if ($compte == 0) {
            return response()->json(['message' => 'Ce membre existe déja pour cette tâche'], 422);
        } else {
            //Inserer dans la bdd
            $taches = Tache::find($id_tache);
            $taches->utilisateurs()->attach($unique);

            return response()->json(
                [
                    'message' => 'Taches assigné avec succes',
                    'code' => 200
                ]
            );
        }
    }

    public function membres($id_tache)
    {
        $membres = Tache::find($id_tache)->utilisateurs;

        return response()->json($membres);
    }

    public function finish($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->statut = 1;
        $taches->save();

        return response()->json($taches);
    }

    public function return($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->statut = 0;
        $taches->save();

        return response()->json($taches);
    }

    public function progress(Request $request, $id_tache)
    {
        //Validation

        //Modification dans la base de donnée
        $taches = Tache::find($id_tache);
        $taches->progression = $request->progression;
        $taches->save();

        if ($request->progression == 100) {
            $taches = Tache::find($id_tache);
            $taches->statut = 2;
            $taches->save();
        }

        return response()->json($taches);
    }

    public function mark($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->statut = 2;
        $taches->progression = 100;
        $taches->save();

        return response()->json($taches);
    }

    public function demark($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->statut = 0;
        $taches->progression = 0;
        $taches->save();

        return response()->json($taches);
    }

    public function supprime($id_tache)
    {
        $taches = Tache::find($id_tache);
        $taches->supprime_tache = 1;
        $taches->save();

        return response()->json($taches);
    }

    public function feuille()
    {
        $taches = DB::table('taches')
            ->select('id_tache as id', 'nom_projet AS building', 'nom_tache AS title')
            ->join("projets", 'taches.id_projet', '=', 'projets.id_projet')
            // ->where('projets.user_id', Auth::user('id')->id)
            ->get();

        // $taches = Tache::where('supprime_tache', 0)
        //     ->with(['project' => function ($query) {
        //         $query->select('id_projet');
        //     }])->pluck('id_projet');

        return response()->json($taches);
    }
}
