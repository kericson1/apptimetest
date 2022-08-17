<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ClientResource;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clients = Client::all();

        return response()->json($clients);
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
            'nom_client' => 'required',
            'contact_client' => 'required|digits:10',
            'email_client' => 'required',
        ];

        $customMessages = [
            'nom_client.required' => 'Veuillez entrer le nom du client',
            'contact_client.required' => 'Veuillez entrer le contact du client',
            'contact_client.digits' => 'Veuillez entrer un contact de 10 chiffres',
            'email_client.required' => 'Veuillez entrer l\'email du client',
        ];

        $this->validate($request, $rules, $customMessages);

        try {
            DB::connection()->getPdo();
            Client::create([
                'nom_client' => $request->nom_client,
                'contact_client' => $request->contact_client,
                'email_client' => $request->email_client,
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
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function show(Client $client)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Client $client)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy(Client $client)
    {
        //
    }
}
