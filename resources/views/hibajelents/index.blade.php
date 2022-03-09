@extends('layout')

@section('content')
<p><a href="{{ route('home') }}"><button type="button">Vissza a főoldalra</button></a></p>
<table>
    <tr>
        <th>Hibajelentő neve</th>
        <th>Hibás gép</th>
        <th>A probléma</th>
        <th>A jelentés dátuma</th>
        <th>Javítási állapota</th>
        @foreach ($hibajelents as $hibajelent)
        <tr>
            <td>
                <a href="{{ route('hibajelents.show', [$hibajelent->id]) }}">{{ $hibajelent->user()->first()->name }}</a>
            </td>
            <td>{{ $hibajelent->gepek()->first()->gep }}</td>
            <td>{{ $hibajelent->hiba }}</td>
            <td>{{ $hibajelent->datum }}</td>
            <td>{{ $hibajelent->allapot()->first()->allapot }}</td>
            <td>
                    @include('delete-hibajelentes-button', ['hibajelentId'=>$hibajelent->id])
            </td>
        </tr>

        @endforeach
    </tr>
</table>
<p><a href="{{ route('hibajelents.create') }}"><button type="button">Új gép adatainak megadása</button></a></p>
@endsection
