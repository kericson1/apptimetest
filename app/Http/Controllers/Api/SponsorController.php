<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\SponsorResource;
use App\Models\Sponsor;
use Illuminate\Http\Request;

class SponsorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sponsors = Sponsor::join("users", 'sponsors.user_id', '=', 'users.id')->get();

        return response()->json($sponsors);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): SponsorResource
    {
        //validation
        $rules = [
            'user_id' => 'required',
            'type_sponsor' => 'required',
        ];

        $customMessages = [
            'user_id.required' => 'Veuillez selectionnez',
            'type_sponsor.required' => 'Veuillez entrer le type',
        ];

        $this->validate($request, $rules, $customMessages);

        $sponsor = Sponsor::create([
            'user_id' => $request->user_id,
            'type_sponsor' => $request->type_sponsor,
        ]);

        return new SponsorResource($sponsor);
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Sponsor $sponsor
     * @return \Illuminate\Http\Response
     */
    public function show(Sponsor $sponsor)
    {
        //
    }

    public function edit($id_sponsor)
    {
        $sponsor = Sponsor::find($id_sponsor);
        return response()->json($sponsor);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Sponsor $sponsor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sponsor $sponsor)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Sponsor $sponsor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sponsor $sponsor)
    {
        //
    }

    public function inactif($id_sponsor)
    {
        $sponsor = Sponsor::find($id_sponsor);
        $sponsor->status = 1;
        $sponsor->save();
    }
}
