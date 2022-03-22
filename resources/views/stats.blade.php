@extends('layout')

@section('title','Main page')

@section('content')
<h1>Üdvözöllek a kezdőoldalon!</h1>
<p>Ennyi személlyel dolgozik a cégünk: {{ $userCount }}</p>
<p>Ennyi géppel dolgozik cégünk: {{ $gepekCount }}</p>
@auth
    <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Dashboard</a>
<p>
    <a href="{{ route('gepeks.index') }}"><button type="button">Gépek amink vannak</button></a>
</p>
<p>
    <a href="{{ route('hibajelents.index') }}"><button type="button">Hibabejelentések</button></a>
</p>
@else
<a href="{{ route('login') }}"><button type="button">Log in</button></a>

@if (Route::has('register'))
    <a href="{{ route('register') }}"><button type="button">Register</button></a>
    @endif
@endauth
@endsection
