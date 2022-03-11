@extends('layout')

@section('content')
<p><a href="{{ route('hibajelents.index') }}"><button type="button">Vissza a listára</button></a></p>
<h1>{{ $hibajelent->user()->first()->name }} hiba jelentése</h1>
<p>Hiba: {{ $hibajelent->hiba }}</p>
<p>A gépe: {{ $hibajelent->gepek()->first()->gep }}</p>
<p>Beküldési dátum: {{ $hibajelent->created_at }}</p>
<h3>Állapot: {{ $hibajelent->allapot()->first()->allapot }}</h3>
<p> @include('delete-hibajelentes-button', ['hibajelentId'=>$hibajelent->id])</p>
<p><a href="{{ route('hibajelents.edit', [$hibajelent->id]) }}"><button type="button">Szerkesztés</button></a></p>
@endsection
