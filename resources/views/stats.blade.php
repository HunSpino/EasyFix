@extends('layout')

@section('title','Main page')

@section('content')
<h1>Üdvözöllek a kezdőoldalon!</h1>
<p>Ennyi személlyel dolgozik a cégünk: {{ $userCount }}</p>
<p>Ennyi géppel dolgozik cégünk: {{ $gepekCount }}</p>
<p>
    <a href="{{ route('gepeks.index') }}">Gépek amink vannak</a>
</p>
<p>
    <a href="{{ route('hibajelents.index') }}">Hibabejelentések</a>
</p>
@endsection
