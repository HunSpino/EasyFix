<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\HibajelentRequest;
use App\Models\Hibajelent;
use Illuminate\Http\Request;

class HibajelentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hibajelents = Hibajelent::all();
        return response()->json($hibajelents);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(HibajelentRequest $request)
    {
        $hibajelent = new Hibajelent();
        $hibajelent->fill($request->all());
        $hibajelent->save();
        return response()->json($hibajelent, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function show(Hibajelent $hibajelent)
    {
        return response()->json($hibajelent);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function update(HibajelentRequest $request, Hibajelent $hibajelent)
    {
        $hibajelent->fill($request->all());
        $hibajelent->save();
        return response()->json($hibajelent, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        Hibajelent::destroy($id);
        return response()->noContent();
    }
}
