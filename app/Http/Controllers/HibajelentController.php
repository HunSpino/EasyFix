<?php

namespace App\Http\Controllers;

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
        $hibajelents = Hibajelent::orderBy('id')->get();
        return view('hibajelents.index',['hibajelents'=>$hibajelents]);
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
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function show(Hibajelent $hibajelent)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function edit(Hibajelent $hibajelent)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Hibajelent $hibajelent)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hibajelent  $hibajelent
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hibajelent $hibajelent)
    {
        //
    }
}
