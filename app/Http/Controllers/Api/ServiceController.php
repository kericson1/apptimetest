<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ServiceResource;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $service = Service::all();

        return response()->json($service);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): ServiceResource
    {
        $service = Service::create([
            'nom_service' => $request->nom_service,
        ]);

        return new ServiceResource($service);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function show(Service $service)
    {
        //
    }

    public function edit($id_service)
    {
        $service = Service::find($id_service);
        return response()->json($service);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_service)
    {
        $service = Service::find($id_service);
        $service->nom_service = request('nom_service');
        $service->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_service)
    {
        $service = Service::find($id_service);
        if ($service->delete()) {
            return $this->refresh();
        } else {
            return response()->json(['error' => "Destroy method has failled."], 425);
        }
    }

    public function nbrepoles(){
        $nbrepoles= Service::count();

        return response()->json($nbrepoles);
    }
}
