<?php

namespace App\Http\Controllers\Api;

use App\Models\Equipement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class EquipementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $equipements = Equipement::all();

        return response()->json($equipements);
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
            $equipements = new Equipement();
            $equipements->type = $request->type;
            $equipements->logiciel = $request->logiciel;
            $equipements->identification = $request->identification;
            $equipements->equipement = $request->equipement;
            $equipements->modele = $request->modele;
            $equipements->cpu = $request->cpu;
            $equipements->gpu = $request->gpu;
            $equipements->ram = $request->ram;
            $equipements->clavier = $request->clavier;
            $equipements->disque = $request->disque;
            $equipements->capacite = $request->capacite;
            $equipements->marque = $request->marque;
            $equipements->annee = $request->annee;
            $equipements->de = $request->de;
            $equipements->a = $request->a;
            $equipements->description = $request->description;
            $equipements->etat = $request->etat;
            $equipements->save();
            return response()->json(['message' => 'Matériel ajouté'], 200);
        } catch (\Exception $exception) {
            die("Impossible de se connecter à la base de données.  Veuillez vérifier votre configuration. erreur:" . $exception);
            return response()->json(['message' => 'Equipement non enregistré'], 422);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Equipement  $equipement
     * @return \Illuminate\Http\Response
     */
    public function show(Equipement $equipement)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Equipement  $equipement
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Equipement $equipement)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Equipement  $equipement
     * @return \Illuminate\Http\Response
     */
    public function destroy(Equipement $equipement)
    {
        //
    }
}
