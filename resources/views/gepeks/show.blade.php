@extends('layout')

@section('title', $gepek->gep )

@section('content')
<p><a href="{{ route('gepeks.index') }}"><button type="button">Vissza a listára</button></a></p>
<h1>A {{ $gepek->gep }} gép</h1>
<p>Épület: {{ $gepek->epulet }}</p>
<p>Emelet: {{ $gepek->emelet }}</p>
<p>Terem: {{ $gepek->terem }}</p>
<p>@include('delete-gepek-button', ['gepekId'=>$gepek->id])</p>
<p><a href="{{ route('gepeks.edit', [$gepek->id]) }}"><button type="button">Szerkesztés</button></a></p>
@endsection
