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
            <td>{{ $hibajelent->users->name }}</td>
            <td>{{ $hibajelent->gepeks->gep }}</td>
            <td>{{ $hibajelent->hiba }}</td>
            <td>{{ $hibajelent->datum }}</td>
            <td>{{ $hibajelent->allapots->allapot }}</td>
        </tr>

        @endforeach
    </tr>
</table>
<p><a href="{{ route('hibajelents.create') }}"><button type="button">Új gép adatainak megadása</button></a></p>
@endsection
