@extends('layout')

@section('title','Main page')

@section('content')
<h1>Üdvözöllek a kezdőoldalon!</h1>
<p>Ennyi személlyel dolgozik a cégünk: {{ $userCount }}</p>
<p>Ennyi géppel dolgozik cégünk: {{ $gepekCount }}</p>

@endsection
