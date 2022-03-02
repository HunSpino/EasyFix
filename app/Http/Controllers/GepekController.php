<?php

namespace App\Http\Controllers;

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
        $gepeks = Gepek::orderBy('id')->get();
        return view('gepeks.index',['gepeks' =>$gepeks]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('gepeks.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $adatok = $request->only(['epulet','emelet','terem','gep']);
        $gepek = new Gepek();
        $gepek->fill($adatok);
        $gepek->save();
        return redirect()->route('gepeks.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function show(Gepek $gepek)
    {
        return view('gepeks.show',['gepek' =>$gepek]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function edit(Gepek $gepek)
    {
        return view('gepeks.edit',['gepek' =>$gepek]);
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
        $adatok = $request->only(['epulet','emelet','terem','gep']);
        $gepek->fill($adatok);
        $gepek->save();
        return redirect()->route('gepeks.show', $gepek->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gepek  $gepek
     * @return \Illuminate\Http\Response
     */
    public function destroy(Gepek $gepek)
    {
        $gepek->delete();
        return redirect()->route('gepeks.index');
    }
}
