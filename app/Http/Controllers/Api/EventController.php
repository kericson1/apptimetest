<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validation

        //Validation du formulaire
        $rules = [
            'start_time' => 'required|date',
            'end_time' => 'required|date|after_or_equal:date_debut',
        ];

        $customMessages = [
            'start_time.required' => 'Veuillez choisir la date de début',
            'end_time.after_or_equal' => 'La date de début de tache doit être supérieur ou égal à la date début du projet',
            'end_time.required' => 'Veuillez choisir la date de fin',
        ];

        $this->validate($request, $rules, $customMessages);

        // Création de la tâche dans la bdd
        $taches = new Event();
        $taches->name = $request->tache;
        $taches->start_time = $request->start_time;
        $taches->end_time = $request->end_time;
        $taches->type_event = "Tâche";
        $taches->user_id = 1;
        $taches->save();

        return response()->json($taches);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function show(Event $event)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Event $event)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function destroy(Event $event)
    {
        //
    }
}
