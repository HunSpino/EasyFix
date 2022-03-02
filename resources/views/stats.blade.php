@extends('layout')

@section('title','Main page')

@section('content')
<h1>Üdvözöllek a kezdőoldalon!</h1>
<p>Ennyi személlyel dolgozik a cégünk: {{ $userCount }}</p>
<p>Ennyi géppel dolgozik cégünk: {{ $gepekCount }}</p>
<p>
    <a href="{{ route('gepeks.index') }}"><button type="button">Gépek amink vannak</button></a>
</p>
<p>
    <a href="{{ route('hibajelents.index') }}"><button type="button">Hibabejelentések</button></a>
</p>
@endsection
