<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Newrole;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Newrole::all();

        return response()->json($roles);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         // Insertion du role
         $newroles = new Newrole();
         $newroles->nom_role = $request->nom_role;
         $newroles->save();
 
         //Recuperation des droits
         $checkbox = $request['droits'];
 
         //Lier un role a des permissions
         $newroles->fonctionnalites()->attach($checkbox);

         return response()->json($newroles);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Newrole  $newrole
     * @return \Illuminate\Http\Response
     */
    public function show(Newrole $newrole)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Newrole  $newrole
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Newrole $newrole)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Newrole  $newrole
     * @return \Illuminate\Http\Response
     */
    public function destroy(Newrole $newrole)
    {
        //
    }
}
