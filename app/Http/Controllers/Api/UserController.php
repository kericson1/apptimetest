<?php

namespace App\Http\Controllers\Api;

use DB;
use Mail;
use DateTime;
use App\Models\User;
use App\Models\Respo;
use App\Models\Tache;
use App\Models\Newrole;
use App\Models\Timesheet;
use Illuminate\Http\Request;
use App\Models\PasswordSecuritie;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\Conge;
use App\Models\Projet;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Query\Builder;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::orderBy('id', 'DESC')->get();

        return response()->json($users);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): UserResource
    {
        //validation
        $rules = [
            'name' => 'required|max:30',
            'prenom' => 'required',
            'email' => 'required|unique:users|email|max:255',
            'poste' => 'required|',
            //            'password' => 'required|between:8,255|confirmed',
            //            'password_confirmation' => 'required'
            // 'password' => 'required'
        ];

        $customMessages = [
            'name.required' => 'Veuillez entrer le nom de l\'utilisateur',
            'name.max' => 'Le nom d\'utilisateur ne dois pas depasser 30 caractères',
            'prenom.required' => 'Veuillez entrer le prenom de l\'utilisateur',
            'poste.required' => 'Veuillez entrer le poste de l\'utilisateur',
            'email.required' => 'Veuillez entre l\'email ',
            // 'password.required' => 'Veuillez entrez un mot de passe ',
            //            'password.min' => 'Veuillez entrez un mot de passe d\'au moins 8 caractères',
            //            'password.regex' => 'Le mot de passe doit contenir des majuscules miniscules et symboles',
            //            'password_confirmation.required' => 'La confirmation du mot de passe est requis',
        ];

        $this->validate($request, $rules, $customMessages);

        // // Insertion du role
        // $newroles = new Newrole();
        // $newroles->nom_role = $request->nom_role;
        // $newroles->save();

        // //Recuperation des droits
        // $checkbox = $request['droits'];

        // //Lier un role a des permissions
        // $newroles->fonctionnalites()->attach($checkbox);

        // $id_role =  $newroles->id_role;

        //Generer mot de passe pour l'utilisateur
        $colors = dechex(mt_rand(0, 16777215));
        $color = str_pad($colors, 6, '0');
        $random_password = "#" . '' . $color;

        // $random_password = "12345678";

        //Encodage
        $new_password = bcrypt($random_password);

        if ($request->civilite == "M.") {
            $sexe = "Homme";
        } else {
            $sexe = "Femme";
        }

        //Insertion de l'utilisateur
        $utilisateur = new User();
        $utilisateur->name = $request->name;
        $utilisateur->genre = $sexe;
        $utilisateur->sexe = $sexe;
        $utilisateur->prenom = $request->prenom;
        $utilisateur->email = $request->email;
        $utilisateur->poste = $request->poste;
        $utilisateur->civilite = $request->civilite;
        $utilisateur->id_role = $request->role_id;
        $utilisateur->id_grade = $request->grade_id;
        $utilisateur->password = Hash::make($new_password);
        $utilisateur->save();

        $person = $utilisateur->id;

        // Insertion de l'expiration dun mot de passe
        $passwordSecurity = new PasswordSecuritie();
        $passwordSecurity->user_id = $person;
        $passwordSecurity->password_expiry_days = 30;
        $passwordSecurity->password_updated_at = \Carbon\Carbon::now();
        $passwordSecurity->save();


        // Ajouter l'utilisateur en tant que collaborateur
        if (count($request->user_service) != 0) {
            //Recuperer les pôles associés
            $poles = $request['user_service'];

            // Liaison utilisateur service
            $utilisateur->services()->attach($poles);
        }

        // Ajouter l'utilisateur en tant que responsable
        if (count($request->respo_service) != 0) {
            //Insertion de pôle du responsable
            $manager = new Respo();
            $manager->user_id = $person;
            $manager->save();

            //Recuperer les pôles associés
            $pole = $request['respo_service'];

            // Liaison responsable service
            $manager->center()->attach($pole);
        }

        //Recuperer les permissions du rôle
        $getPermissions = DB::table('fonctionnalite_newrole')->select('id_fonc')->where('id_role', $request->role_id)->get();
        foreach ($getPermissions as $get) {
            $qwerty[] = $get->id_fonc;
        }
        // dd($qwerty);

        $utilisateurs = $utilisateur;

        $utilisateurs->fonctionnalites()->attach($qwerty);

        // Envoie d'email de création de compte
        //        if ($request->isMethod('post')) {
        //            $data = $request->all();
        //
        //            $to_email = $data['email'];
        //            $data = array(
        //                "body" => "Accés au compte",
        //                'email' => $data['email'],
        //                'password' => $data['password'],
        //                'civilite' => $data['civilite'],
        //                'nom' => $data['name'],
        //                'prenom' => $data['prenom'],
        //            );
        //
        //            Mail::send('emails.users', $data, function ($message) use ($to_email) {
        //                $message->to($to_email)
        //                    ->subject('Notification');
        //                $message->from('info@aroapartners.com', 'Aroapartners');
        //            });
        //
        //        }


        return new UserResource($passwordSecurity);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\User $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return UserResource::make($user);
    }

    public function edit($id)
    {
        $user = User::find($id);
        return response()->json($user);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\User $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = request('name');
        $user->prenom = request('prenom');
        $user->email = request('email');
        $user->poste = request('poste');
        $user->save();

        // if ($user) {
        //     return $this->refresh();
        // }

        return response()->json($user);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\User $user
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        if ($user->delete()) {
            return $this->refresh();
        } else {
            return response()->json(['error' => "Destroy method has failled."], 425);
        }
    }

    private function refresh()
    {
        $tasks = User::OrderBy('created_at', 'DESC')->get();
        return response()->json($tasks);
    }

    public function actif($id)
    {
        $user = User::find($id);
        $user->actif = 0;
        $user->save();
    }

    public function inactif($id)
    {
        $user = User::find($id);
        $user->actif = 1;
        $user->save();

        Auth::logout();

        return response()
            ->json([
                'logout' => true
            ]);
    }

    public function actifuser()
    {
        $users = User::where('actif', 1);

        return response()->json($users);
    }

    public function nbreusers()
    {
        $nbreusers = User::count();

        return response()->json($nbreusers);
    }

    public function graphusers()
    {

        $graphusers = User::select('genre', DB::raw('COUNT(DISTINCT name) as followers'))
            ->groupBy('genre')
            ->where('actif', 0)
            // ->where('type_user', '=', 'USER')
            // ->where('id_entreprise', Auth::user()->id_entreprise)
            ->get();

        return response()->json($graphusers);
    }

    public function updateuser(Request $request)
    {
        // dd($request->all());

        $data = $request->all();
        // dd($data);

        if ($request->hasFile('file')) {
            $ressource_tmp = $request->file('file');
            if ($ressource_tmp->isValid()) {
                //obtenir l'extension de l'file
                $extension = $ressource_tmp->getClientOriginalExtension();
                //Generer un nouveau nom d'file
                $ressource = request('file')->getClientOriginalName();
                $ressourceTitle = pathinfo($ressource, PATHINFO_FILENAME);
                $ressourceName = $ressourceTitle . '.' . $extension;
                $ressourcePath = 'images/profil/';
                //charger l'image
                $ressource_tmp->move($ressourcePath, $ressourceName);
            }
        }

        $id = $data['id'];

        $users = User::where('id', $id)->update([
            'name' =>  $data['name'],
            'prenom' =>  $data['prenom'],
            'anniversaire' =>  $data['anniversaire'],
            'phone' =>  $data['telephone'],
            'adresse' =>  $data['adresse'],
            'image' =>  $ressourceName,
        ]);


        return response()->json($users);
    }

    public function getTimesheet(Request $request)
    {
        $id = Auth::user('id')->id;

        $debut = $request->time;
        $fin = $request->fin;

        $timesheets = Timesheet::join("users", 'timesheets.user_id', '=', 'users.id')->join("projets", 'projets.id_projet', '=', 'timesheets.id_projet')
            ->join("taches", 'taches.id_tache', '=', 'timesheets.id_tache')
            ->where('timesheets.user_id', $id)->where('timesheets.statut', '1')
            ->whereBetween('date_timesheet', [$debut, $fin])->get();

        return response()->json($timesheets);
    }

    public function getCheckbox($id)
    {
        $checkbox = DB::table('fonctionnalite_user')->select('id_fonc')->where('user_id', $id)->get();

        return response()->json($checkbox);
    }

    public function getStat(Request $request)
    {
        if ($request->type == "Taux d'occupation") {
            $debut = $request->ddebut;
            $fin = $request->ffin;
            $user = $request->user_id;


            // Recuper les infos de l'utilisateurs
            $ok = User::select('name', 'prenom', 'civilite')->where('id', $user)->get();
            $array = json_decode(json_encode($ok), true);
            $ar = $array[0];
            $to_email = $ar['name'];
            $last = $ar['prenom'];
            $civil = $ar['civilite'];


            // Lister les dates entre la plage choisi
            function getDatesBetween($start, $end)
            {
                if ($start > $end) {
                    return false;
                }

                $sdate = strtotime("$start +1 day");
                $edate = strtotime($end);

                $dates = array();

                for ($i = $sdate; $i < $edate; $i += strtotime('+1 day', 0)) {
                    $dates[] = date('Y-m-d', $i);
                }

                return $dates;
            }

            $dates = getDatesBetween($debut, $fin);

            // Compter les jours liste
            $datetimes = [];
            foreach ($dates as $date) {
                $datetimes[] = $date;
            }
            $time = count($datetimes);

            $datetimes = [];
            foreach ($dates as $date) {
                $datetimes[] = $date;
            }
            $time = count($datetimes);

            $user = $request->user_id;

            $taches = Tache::select('date_debut_tache', 'date_fin_tache')->whereHas('utilisateurs', function ($query) use ($user) {
                $query->where('id', $user);
            })->whereBetween('date_debut_tache', [$debut, $fin])
                ->whereBetween('date_fin_tache', [$debut, $fin])
                ->get();

            $tasks = [];
            foreach ($taches as $tache) {
                $tasks[] = $tache;
            }

            $disponible = [];
            $indisponible = [];
            //verification avec une condition if
            foreach ($datetimes as $datetime) {
                for ($i = 0; $i < count($tasks); $i++) {
                    if ($tasks[$i]['date_debut_tache'] <= $datetime && $tasks[$i]['date_fin_tache'] >= $datetime) {
                        $indisponible[] = $datetime;
                    } else {
                        $disponible[] = $datetime;
                    }
                }
            }

            $array1 = array_unique($disponible);
            $array2 = array_unique($indisponible);

            $a1 = array_unique($disponible);
            $a2 = array_unique($indisponible);


            $result = array_diff($array1, $array2);
            $resultat = count($result);

            $result1 = array_diff($a2, $a1);

            $resultat1 = count($result1);

            $calcul = ($resultat / $time) * 100;
            if ($calcul == 0) {
                $calcul = 100;
            }


            return response()->json($calcul);
        }

        if ($request->type == "Tâches") {
            $debut = $request->ddebut;
            $fin = $request->ffin;
            $user = $request->user_id;

            $taches = Tache::with('project')->whereHas('utilisateurs', function ($query) use ($user) {
                $query->where('id', $user);
            })->whereBetween('date_debut_tache', [$debut, $fin])
                ->whereBetween('date_fin_tache', [$debut, $fin])
                ->where('statut', 0)
                ->get();

            return response()->json($taches);
        }

        if ($request->type == "Projets") {
            $debut = $request->ddebut;
            $fin = $request->ffin;
            $user = $request->user_id;

            $projets = Projet::with(['users', 'sponsors' => function ($query) {
                $query->select('sponsors.id_sponsor', 'sponsors.user_id');
            }, 'clients' => function ($query) {
                $query->select('clients.nom_client');
            }, 'user' => function ($query) {
                $query->select('users.id', 'users.name AS chef', 'users.image AS image');
            }])->whereHas('users', function ($query) use ($user) {
                $query->where('id', $user);
            })->whereBetween('date_debut', [$debut, $fin])
                ->whereBetween('date_fin', [$debut, $fin])
                ->where('archiver_projet', '=', '0')
                ->where('supprimer_projet', '=', '0')
                ->where('etat', '=', '0')
                ->get();

            return response()->json($projets);
        }

        if ($request->type = "Feuilles de temps") {
            $debut = $request->ddebut;
            $fin = $request->ffin;
            $user = $request->user_id;

            $feuilles = Timesheet::select('id_timesheet', 'taches.id_tache', 'date_timesheet', 'heure_timesheet')
                ->join("projets", 'projets.id_projet', '=', 'timesheets.id_projet')
                ->join("taches", 'taches.id_tache', '=', 'timesheets.id_tache')
                ->where('timesheets.user_id',  $user)
                ->whereBetween('date_timesheet', [$debut, $fin])
                ->orderBy('timesheets.id_timesheet', 'DESC')
                ->get();

            return response()->json($feuilles);
        }

        if($request->type = "Absences"){
            $debut = $request->ddebut;
            $fin = $request->ffin;
            $user = $request->user_id;

            $conges = Conge::where('user_id', $user)
                ->whereBetween('date_debut', [$debut, $fin])
                ->whereBetween('date_fin', [$debut, $fin])
                ->get();

                return response()->json($conges);
        }
    }
}
