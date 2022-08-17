<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Conge;
use App\Models\Respo;
use DateTime;
use Illuminate\Http\Request;

class CongeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $conges = Conge::with('utilisation')->get();

        return response()->json($conges);
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
            'type' => 'required',
            'date_debut' => 'required|date',
            'date_fin' => 'required|date|after_or_equal:date_debut',
//            'respo' => 'required',
            'motif' => 'required',
        ];

        $customMessages = [
            'type.required' => 'Veuillez selectionner le type d\'absence',
            'date_debut.required' => 'Veuillez selectionnez la date debut',
            'date_fin.required' => 'Veuillez selectionnez la date debut',
            'date_fin.after_or_equal' => 'La date de fin doit être supérieur ou égal à celle de debut',
//            'respo.required' => 'Veuillez selectionnez le du responsable',
            'motif.required' => 'Veuillez entrez le motif',
        ];

        $this->validate($request, $rules, $customMessages);

//        if ($request->hasfile('fichier_conge')) {
//
//            foreach ($request->file('fichier_conge') as $file) {
//                // $extension = $file->getClientOriginalExtension();
//                $filename = $file->getClientOriginalName();
//                $file->move(public_path() . '/fichier/fichier_conge/', $filename);
//                $insert[] = "$filename";
//            }
//        } else {
//            $insert[] = "";
//        }

        // Nombre de jour
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
            $day = date("d-m", $i);
            if ($jour == 'Saturday' || $jour == 'Sunday' || $day == "01-01" || $day == "01-05" || $day == "07-08" || $day == "15-08" || $day == "01-11" || $day == "15-11" || $day == "25-12") {
                $j += 1;
            }
        }


        $jourouvre = $ind - $j;
//        dd($jourouvre);

        $datetime1 = new DateTime($ddate);
        $datetime2 = new DateTime($fdate);
        $interval = $datetime1->diff($datetime2);
        $days = $interval->format('%a');
        $newDateAjout = date("Y-m-d", strtotime($fdate . " + 1 day"));
//        dd($days);


        // Insertion dans la bdd
//        $user = Auth::user();

        $conge = new Conge();
        $conge->type_conge = $request->type;
        $conge->date_debut = $request->date_debut;
        $conge->date_fin = $request->date_fin;
        $conge->motif = $request->motif;
        $conge->id_respo = 1;
        $conge->user_id = 1;
        $conge->duree = $jourouvre;
        $conge->date_retour = $newDateAjout;
//        $conge->fichier_conge = json_encode($insert);
        $conge->etat = "ENCOURS";
        $conge->save();

//        $now = date('Y-m-d');
//
//        $log = new Log();
//        $log->user_id = Auth::user()->id;
//        $log->date_log = $now;
//        $log->type = "Demande d'absence";
//        $log->action = $request->type;
//        $log->save();

//        // envoi de mail
//        if ($request->isMethod('post')) {
//            $data = $request->all();
//
//            $name = $request->respo;
//
//            $a = DB::table('respos')
//                ->select('*')
//                ->join("users", 'respos.user_id', '=', 'users.id')
//                ->where('respos.id_respo', $name)
//                ->get();
//
//            $array = json_decode(json_encode($a), true);
//            $ar = $array[0];
//            $to_email = $ar['email'];
//            $r_civil = $ar['civilite'];
//            $r_name = $ar['name'];
//            $r_prenom = $ar['prenom'];
//
//            $b = DB::table('users')
//                ->select('*')
//                ->where('id',$user->id)
//                ->get();
//
//            $barray = json_decode(json_encode($b), true);
//            $br = $barray[0];
//            $civil = $br['civilite'];
//            $name = $br['name'];
//            $prenom = $br['prenom'];
//
//
//
//            $data = array(
//                "body" => "Notification",
//                'motif' => $data['motif'],
//                'date_debut' => $data['date_debut'],
//                'date_fin' => $data['date_fin'],
//                'r_civil' => $r_civil,
//                'r_name' => $r_name,
//                'r_prenom' => $r_prenom,
//                'civil' => $civil,
//                'name' => $name,
//                'prenom' => $prenom,
//            );
//
//            Mail::send('emails.conge', $data, function ($message) use ($to_email) {
//                $message->to($to_email)
//                    ->subject('Notification');
//                $message->from('info@aroapartners.com', 'Aroapartners');
//            });
//
//            Mail::send('emails.congerh', $data, function ($message) use ($to_email) {
//                $message->to('vanessa.bogui@aroapartners.com')
//                    ->subject('Notification');
//                $message->from('info@aroapartners.com', 'Aroapartners');
//            });
//        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Conge $conge
     * @return \Illuminate\Http\Response
     */
    public function show(Conge $conge)
    {
        //
    }

    public function edit($id_conge)
    {
        $conge = Conge::find($id_conge);

        return response()->json($conge);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Conge $conge
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_conge)
    {
        $conges = Conge::find($id_conge);
        $conges->type_conge = request('type');
        $conges->date_debut = request('date_debut');
        $conges->date_fin = request('date_fin');
        $conges->motif = request('motif');
        $conges->save();

        return response()->json($conges);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Conge $conge
     * @return \Illuminate\Http\Response
     */
    public function destroy(Conge $conge)
    {
        //
    }

    public function supprime($id_conge)
    {
        $conges = Conge::find($id_conge);
        $conges->supprime_conge = 1;
        $conges->save();

        return response()->json($conges);
    }

}
