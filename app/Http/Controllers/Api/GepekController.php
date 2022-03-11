<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function show(Gepek $gepek)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function edit(Gepek $gepek)
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
    public function update(Request $request, Gepek $gepek)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function destroy(Gepek $gepek)
    {
        //
    }
}
