<?php

namespace App\Http\Controllers;

use App\Models\Gepek;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $userCount = User::count();
        $gepekCount = Gepek::count();

        return view('stats',[
            'userCount' => $userCount,
            'gepekCount' => $gepekCount
        ]);
    }
}
