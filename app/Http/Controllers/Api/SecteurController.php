<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Secteur;
use DB;
use Illuminate\Http\Request;

class SecteurController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $secteurs = Secteur::all();

        return response()->json($secteurs);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validation
        $rules = [
            'nom_secteur' => 'required',
        ];

        $customMessages = [
            'nom_secteur.required' => 'Veuillez entrer le nom du client',
        ];

        $this->validate($request, $rules, $customMessages);

        try {
            Secteur::create([
                'nom_secteur' => $request->nom_secteur,
            ]);

            return ['message' => 'Insertion avec succes'];
        } catch (\Exception $exception){
            die("Could not connect to the database.  Please check your configuration. error:" . $exception );
            return response()->json(['message' => 'Client non enregistré'], 422);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Secteur  $secteur
     * @return \Illuminate\Http\Response
     */
    public function show(Secteur $secteur)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Secteur  $secteur
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Secteur $secteur)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Secteur  $secteur
     * @return \Illuminate\Http\Response
     */
    public function destroy(Secteur $secteur)
    {
        //
    }
}
