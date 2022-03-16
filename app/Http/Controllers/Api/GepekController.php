<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\GepekRequest;
use App\Models\Gepek;
use Illuminate\Http\Request;

class GepekController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gepeks = Gepek::all();
        return response()->json($gepeks);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(GepekRequest $request)
    {
        $gepek = new Gepek();
        $gepek->fill($request->all());
        $gepek->save();
        return response()->json($gepek, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function show(Gepek $gepek)
    {
        return response()->json($gepek);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function edit(int $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function update(GepekRequest $request, Gepek $gepek)
    {
        $gepek->fill($request->all());
        $gepek->save();
        return response()->json($gepek,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        Gepek::destroy($id);
        return response()->noContent();
    }
}
