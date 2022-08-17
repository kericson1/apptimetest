<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Projet;
use App\Models\Projet_file;
use App\Models\Projet_validation;
use App\Models\Tache;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class ProjetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->id;
        $projets = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef', 'users.image AS image');
        }])->whereHas('users', function ($query) use ($id) {
            $query->where('id', $id);
        })->where('archiver_projet', '=', '0')
            ->where('supprimer_projet', '=', '0')
            ->where('etat', '=', '0')
            ->orderBy('projets.id_projet', 'DESC')
            ->get();

        return response()->json($projets);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validation
        $rules = [
            'nom_projet' => 'required',
            'date_debut' => 'required',
            'date_fin' => 'date_format:Y-m-d|after_or_equal:date_debut',
            'user_id' => 'required',
            'sponsor_id' => 'required',
            'users_team' => 'required',
            //            'description' => 'required',
            //            'fichier' => 'required|max:4',
            //            'type_projet' => 'required',
        ];

        $customMessages = [
            'nom_projet.required' => 'Veuillez entrer le nom du projet',
            'date_debut.required' => 'Veuillez choisir la date de début',
            'date_fin.date_format' => 'La date de fin ne dois pas être inferieur à la date de debut',
            'user_id.required' => 'Veuillez selectionnez le chez de projet',
            'users_team.required' => 'Veuillez selectionnez les membre du projet',
            'sponsor_id.required' => 'Veuillez selectionnez le sponsor de projet',
            //            'description.required' => 'Veuillez entrez une description',
            //            'fichier.required' => 'Fichier requis pour la suite',
            //            'fichier.max' => 'Le nombre de fichier ne doit pas être supérieur à 4',
            //            'type_projet.required' => 'Veuillez choisir un type',
        ];
        $this->validate($request, $rules, $customMessages);

        try {
            DB::connection()->getPdo();
            $verif = Projet::select('nom_projet')->where('nom_projet', $request->nom_projet)->count();
            if ($verif == 1) {
                return response()->json(['message' => 'Ce projet existe déja'], 200);
            } else {
                if ($request->type_projet == "PROJET") {
                    //  generation de reference du projet
                    $lastID = Projet::max('id_projet');
                    if ($lastID == null) {
                        $id = 1;
                        $prefix = substr($request->nom_projet, 0, 2);
                        $day = date('d');
                        $month = date('m');
                        $year = date('Y');
                        $a = "PR";
                        $ref = $a . '-' . $id . '-' . intval($month) . intval($day) . $year . strtoupper($prefix);
                    } else {
                        $id = intval($lastID) + 1;
                        $prefix = substr($request->nom_projet, 0, 2);
                        $day = date('d');
                        $month = date('m');
                        $year = date('Y');
                        $a = "PR";
                        $ref = $a . '-' . $id . '-' . intval($month) . intval($day) . $year . strtoupper($prefix);
                    }

                    // Heure total
                    $ddate = $request->date_debut;
                    $fdate = $request->date_fin;

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
                    $heure_total = $jourouvre * 8;

                    //Création de projet
                    $projets = new projet();
                    $projets->nom_projet = $request->nom_projet;
                    $projets->date_debut = $request->date_debut;
                    $projets->date_fin = $request->date_fin;
                    $projets->id_sponsor = $request->sponsor_id;
                    $projets->id_client = $request->client_id;
                    $projets->description = $request->description;
                    $projets->reference_projet = $ref;
                    $projets->user_id = $request->user_id;
                    $projets->heure_total = $heure_total;
                    $projets->type_projet = "PROJET";
                    $projets->validation_projet = "0";
                    $projets->archiver_projet = "0";
                    $projets->cree_par = 1;
                    $projets->etat = 0;
                    $projets->save();

                    //Recuperer l'equipe  du projets
                    $equipe = $request['users_team'];

                    //Recuperer le chef de projet et le mettre dans un tableau
                    $chef = $request['user_id'];
                    $str = explode(',', $chef);

                    //Avoir une equipe avec des membres uniques
                    $combin = array_merge($equipe, $str);
                    $uniqu = array_unique($combin);

                    // Liaison projet équipe
                    $projets->users()->attach($uniqu);

                    // Ajoût de la tâche superviser
                    $taches = new Tache();
                    $taches->id_projet = $projets->id_projet;
                    $taches->nom_tache = "Superviser";
                    $taches->date_debut_tache = $request->date_debut;
                    $taches->date_fin_tache = $request->date_fin;
                    $taches->statut = 0;
                    $taches->save();

                    //Lier un utilisateur a une tâche
                    $taches->utilisateurs()->attach($chef);


                    //                $projets->users()->attach($request->users_team);
                    return response()->json([
                        'status' => 'success',
                        'post' => $taches
                    ]);

                    return ['message' => 'Insertion avec succes'];
                } else {
                    //  generation de reference du projet
                    $lastID = Projet::max('id_projet');
                    if ($lastID == null) {
                        $id = 1;
                        $prefix = substr($request->nom_projet, 0, 2);
                        $day = date('d');
                        $month = date('m');
                        $year = date('Y');
                        $a = "MI";
                        $ref = $a . '-' . $id . '-' . intval($month) . intval($day) . $year . strtoupper($prefix);
                    } else {
                        $id = intval($lastID) + 1;
                        $prefix = substr($request->nom_projet, 0, 2);
                        $day = date('d');
                        $month = date('m');
                        $year = date('Y');
                        $a = "MI";
                        $ref = $a . '-' . $id . '-' . intval($month) . intval($day) . $year . strtoupper($prefix);
                    }
                    // Heure total
                    $ddate = $request->date_debut;
                    $fdate = $request->date_fin;

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
                    $heure_total = $jourouvre * 8;

                    //Création de projet
                    $projets = new projet();
                    $projets->nom_projet = $request->nom_projet;
                    $projets->date_debut = $request->date_debut;
                    $projets->date_fin = $request->date_fin;
                    //                $projets->id_sponsor = $request->sponsor_id;
                    //                    $projets->id_client = $request->client_id;
                    $projets->description = $request->description;
                    $projets->reference_projet = $ref;
                    $projets->user_id = $request->user_id;
                    $projets->heure_total = $heure_total;
                    $projets->type_projet = "MISSION";
                    $projets->validation_projet = "0";
                    $projets->archiver_projet = "0";
                    $projets->cree_par = 1;
                    $projets->etat = 0;
                    $projets->save();

                    //Recuperer l'equipe  du projets
                    $equipe = $request['users_team'];

                    //Recuperer le chef de projet et le mettre dans un tableau
                    $chef = $request['user_id'];
                    $str = explode(',', $chef);

                    //Avoir une equipe avec des membres uniques
                    $combin = array_merge($equipe, $str);
                    $uniqu = array_unique($combin);

                    // Liaison projet équipe
                    $projets->users()->attach($uniqu);

                    // Ajoût de la tâche superviser
                    $taches = new Tache();
                    $taches->id_projet = $projets->id_projet;
                    $taches->nom_tache = "Superviser";
                    $taches->date_debut_tache = $request->date_debut;
                    $taches->date_fin_tache = $request->date_fin;
                    $taches->statut = 0;
                    $taches->save();

                    //Lier un utilisateur a une tâche
                    $taches->utilisateurs()->attach($chef);
                }
            }
        } catch (\Exception $exception) {
            die("Could not connect to the database.  Please check your configuration. error:" . $exception);
            return response()->json(['message' => 'Projet non enregistré'], 422);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Projet $projet
     * @return \Illuminate\Http\Response
     */
    public function show($id_projet)
    {
        $taches = Tache::with('projeta')->find($id_projet);

        return response()->json($taches);
    }

    public function edit($id_projet)
    {
        $projets = Projet::findOrFail($id_projet);
        return response()->json($projets);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Projet $projet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Projet $projet)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Projet $projet
     * @return \Illuminate\Http\Response
     */
    public function destroy(Projet $projet)
    {
        //
    }

    public function equipe($id_projet)
    {
        //        $equipes = Projet::with(['users' => function ($query) {
        //            $query->select('user_id');
        //        }])->find($id_projet);

        $equipes = Projet::find($id_projet)->users;

        return response()->json($equipes);
    }

    public function chef($id_projet)
    {
        $chefs = Projet::with(['user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->find($id_projet);

        return response()->json($chefs);
    }

    public function tasks($id_projet)
    {
        //        $taches = Projet::find($id_projet)->with('tache')->get();
        $taches = Tache::find($id_projet)
            ->with('project')
            ->where('id_projet', $id_projet)
            // ->where('supprime_tache','0')
            ->get();

        return response()->json($taches);
    }

    public function encours($id_projet)
    {
        $taches = Tache::find($id_projet)
            ->with('project')
            ->where('statut', '=', '0')
            ->where('id_projet', $id_projet)
            ->count();

        return response()->json($taches);
    }

    public function completes($id_projet)
    {
        $taches = Tache::find($id_projet)
            ->with('project')
            ->where('statut', '=', '2')
            ->where('id_projet', $id_projet)
            ->count();

        return response()->json($taches);
    }

    public function archiver($id_projet)
    {
        $projets = Projet::find($id_projet);
        $projets->archiver_projet = 1;
        $projets->save();

        return response()->json($projets);
    }

    public function valider($id_projet)
    {
        $projets = Projet::find($id_projet);
        $projets->validation_projet = 1;
        $projets->save();

        return response()->json($projets);
    }

    public function refuser($id_projet)
    {
        $projets = Projet::find($id_projet);
        $projets->supprimer_projet = 1;
        $projets->save();

        return response()->json($projets);
    }

    public function members(request $request, $id_projet)
    {
        $membres = Projet::find($id_projet)->users;
        foreach ($membres as $ah) {
            $enfin[] = $ah->id;
        }
        $equipe = $request['user_id'];
        $tab = array($equipe);

        $result = array_merge($tab, $enfin);
        $unique = array_unique($result);

        $projets = Projet::find($id_projet);
        $projets->users()->detach($enfin);

        //Inserer dans la bdd
        $projets = Projet::find($id_projet);
        $projets->users()->attach($unique);

        return response()->json(
            [
                'message' => 'Membres ajouté avec succes',
                'code' => 200
            ]
        );
    }

    public function progress($id_projet)
    {
        // Nombres de tâche complete
        $completes = Tache::find($id_projet)
            ->with('project')
            ->where('statut', '=', '2')
            ->where('id_projet', $id_projet)
            // ->where('supprime_tache', '0')
            ->count();

        // Nombres de tâche en cours
        $encours = Tache::find($id_projet)
            ->with('project')
            ->where('statut', '=', '0')
            ->where('id_projet', $id_projet)
            // ->where('supprime_tache', '0')
            ->count();

        // Nombres de tâche total
        $total = Tache::find($id_projet)
            ->with('project')
            ->where('id_projet', $id_projet)
            // ->where('supprime_tache', '0')
            ->count();

        // inserer le nombre de tâches completes
        $complet = Projet::find($id_projet);
        $complet->termine = $completes;
        $complet->save();

        // inserer le nombre de tâches en cours
        $complet = Projet::find($id_projet);
        $complet->encours = $encours;
        $complet->save();


        //Calcul de la progression
        $progression = ($completes / $total) * 100;
        if ($total == 0) {
            $progress = 0;
            $projet = Projet::find($id_projet);
            $projet->progression = 0;
            $projet->save();
        } else {
            $progress = number_format($progression, 0);
            $projet = Projet::find($id_projet);
            $projet->progression = $progress;
            $projet->save();
        }

        // Modification du statut du projet
        if ($progression == 100) {
            $projet = Projet::find($id_projet);
            $projet->etat = 1;
            $projet->save();
        }

        if ($progression != 100) {
            $projet = Projet::find($id_projet);
            $projet->etat = 0;
            $projet->save();
        }

        return response()->json($progress);
    }

    public function archiv()
    {
        $projets = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->where('archiver_projet', '=', '1')->orderBy('id_projet', 'DESC')->get();

        return response()->json($projets);
    }

    public function termine(){
        $termines = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->where('projets.etat', '=', '1')->orderBy('id_projet', 'DESC')->get();

        return response()->json($termines);
    }

    public function valid()
    {
        $valids = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->where('validation_projet', '=', '1')
            ->where('supprimer_projet', '=', '0')
            ->orderBy('id_projet', 'DESC')
            ->get();

        return response()->json($valids);
    }

    public function novalid()
    {
        $novalids = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->where('supprimer_projet', '=', '0')
            ->where('validation_projet', '=', '0')
            ->orderBy('id_projet', 'DESC')
            ->get();

        //        $projets = Projet::with('users')->get();

        return response()->json($novalids);
    }

    public function all()
    {
        $projets = Projet::with(['users', 'sponsors' => function ($query) {
            $query->select('sponsors.id_sponsor', 'sponsors.user_id');
        }, 'clients' => function ($query) {
            $query->select('clients.nom_client');
        }, 'user' => function ($query) {
            $query->select('users.id', 'users.name AS chef');
        }])->where('supprimer_projet', '=', '0')
            ->orderBy('id_projet', 'DESC')
            ->get();

        //        $projets = Projet::with('users')->get();

        return response()->json($projets);
    }

    public function nbreprojets()
    {
        $nbreprojets = Projet::count();

        return response()->json($nbreprojets);
    }

    public function personnel()
    {
        $personnel = Projet::all();

        return response()->json($personnel);
    }

    public function description(Request $request, $id_projet)
    {
        $projet = Projet::where('id_projet', $id_projet)->update([
            'nom_projet' => $request->nom_projet,
            'description' => $request->description,
        ]);
    }

    public function cache($id_projet)
    {
        $id = Auth::user()->id;
        $caches = Projet::find($id_projet)
            ->where('id_projet', $id_projet)
            ->where('user_id', $id)
            ->count();

        return response()->json($caches);
    }

    public function endate(request $request, $id_projet)
    {

        // Heure total

        $date = $request->date_debut;
        $fdate = $request->date_fin;
        $newDate = date('d-m-Y', strtotime($date));
        $debut_jour = intval(date('d', strtotime($newDate)));
        $debut_mois = intval(date('m', strtotime($newDate)));
        $debut_annee = intval(date('Y', strtotime($newDate)));

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
        $heure_total = $jourouvre * 8;

        $projet = Projet::find($id_projet);
        $projet->heure_total = $heure_total;
        $projet->date_fin = $request->date_fin;
        $projet->save();
    }

    public function editchef(Request $request, $id_projet)
    {
        $projet = Projet::find($id_projet);
        $projet->user_id = $request->user_chef;
        $projet->save();

        return response()->json($projet);
    }

    public function addfilevalidation(Request $request)
    {
        $data = $request->all();

        if ($request->hasFile('file')) {
            $ressource_tmp = $request->file('file');
            if ($ressource_tmp->isValid()) {
                //obtenir l'extension de l'file
                $extension = $ressource_tmp->getClientOriginalExtension();
                //Generer un nouveau nom d'file
                $ressource = request('file')->getClientOriginalName();
                $ressourceTitle = pathinfo($ressource, PATHINFO_FILENAME);
                $ressourceName = $ressourceTitle . '.' . $extension;
                $ressourcePath = 'projets/validations/';
                //charger l'image
                $ressource_tmp->move($ressourcePath, $ressourceName);
            }
        }

        $id = $data['id_projet'];

        $fichiers = new Projet_validation();
        $fichiers->fichier_validation = $ressourceName;
        $fichiers->id_projet = $id;
        $fichiers->save();

        return response()->json($fichiers);
    }

    public function addfile(Request $request)
    {
        $data = $request->all();

        if ($request->hasFile('files')) {
            $ressource_tmp = $request->file('files');
            if ($ressource_tmp->isValid()) {
                // Obtenir l'extension de l'file
                $extension = $ressource_tmp->getClientOriginalExtension();
                // Generer un nouveau nom d'file
                $ressource = request('files')->getClientOriginalName();
                $ressourceTitle = pathinfo($ressource, PATHINFO_FILENAME);
                $ressourceName = $ressourceTitle . '.' . $extension;
                $ressourcePath = 'projets/fichiers/';
                // Charger l'image
                $ressource_tmp->move($ressourcePath, $ressourceName);
            }
        }

        $id = $data['id_projet'];

        $fichiers = new Projet_file();
        $fichiers->projet_file = $ressourceName;
        $fichiers->id_projet = $id;
        $fichiers->save();

        return response()->json($fichiers);
    }

    public function getfilevalidation($id_projet)
    {
        $filevalids = Projet_validation::where('id_projet', $id_projet)->get();

        return response()->json($filevalids);
    }

    public function getfileproject($id_projet)
    {
        $fileprojects = Projet_file::where('id_projet', $id_projet)->get();

        return response()->json($fileprojects);
    }
}
