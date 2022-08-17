<?php

namespace App\Http\Controllers\Api;

use Auth;
use App\Models\Tache;
use App\Models\Timesheet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Timesheet_demande;

class TimesheetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $events = Timesheet::select('id_timesheet AS id', 'taches.id_tache AS resourceId', 'date_timesheet AS start', 'heure_timesheet AS title')
            ->join("projets", 'projets.id_projet', '=', 'timesheets.id_projet')
            ->join("taches", 'taches.id_tache', '=', 'timesheets.id_tache')
            // ->where('timesheets.user_id', Auth::user('id')->id)
            ->orderBy('timesheets.id_timesheet', 'DESC')
            ->get();

        return response()->json($events);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            DB::connection()->getPdo();
            $id_projet = Tache::select('id_projet')->where('id_tache', $request->id_tache)->get();
            $arrays = json_decode(json_encode($id_projet), true);
            $cr = $arrays[0];
            $id = $cr['id_projet'];

            $timesheets = new Timesheet();
            $timesheets->id_projet = $id;
            $timesheets->id_tache = $request->id_tache;
            $timesheets->user_id = Auth::user()->id;
            $timesheets->date_timesheet = $request->date_timesheet;
            $timesheets->statut = 0;
            $timesheets->validation_timesheet = 0;
            $timesheets->heure_timesheet = $request->heure_timesheet;
            $timesheets->save();
            return response()->json(['message' => 'Feuille de temps ajouté'], 200);
        } catch (\Exception $exception) {
            die("Could not connect to the database.  Please check your configuration. error:" . $exception);
            return response()->json(['message' => 'Projet non enregistré'], 422);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Timesheet  $timesheet
     * @return \Illuminate\Http\Response
     */
    public function show(Timesheet $timesheet)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Timesheet  $timesheet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Timesheet $timesheet)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Timesheet  $timesheet
     * @return \Illuminate\Http\Response
     */
    public function destroy(Timesheet $timesheet)
    {
        //
    }

    public function maj(Request $request)
    {
        $id = $request->idTimesheet;

        $timesheets = Timesheet::where('id_timesheet', $id)->update([
            'heure_timesheet' => $request->heure_timesheet,
        ]);

        return response()->json($timesheets);
    }

    public function soumettre(Request $request)
    {
        $timesheets = Timesheet::whereBetween('date_timesheet', [$request->firstday, $request->lasttday])->where('user_id', Auth::user()->id)->update(['statut' => 1]);

        return response()->json($timesheets);
    }

    public function envoie(Request $request)
    {
        $id = Auth::user()->id;
        $now = date('Y-m-d');

        $demandes = new Timesheet_demande();
        $demandes->date_demande = $now;
        $demandes->motif = $request->motif;
        $demandes->user_id = $id;
        $demandes->status = 0;
        $demandes->save();

        return response()->json($demandes);
    }

    public function listdemande(){
        $demandes = Timesheet_demande::where('user_id',Auth::user()->id)->get();

        return response()->json($demandes);
    }
}
