<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Hibajelentés Lista') }}
        </h2>
    </x-slot>
<p><a href="{{ route('dashboard') }}"><button type="button">Vissza a főoldalra</button></a></p>
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
            <td>{{ $hibajelent->created_at }}</td>
            <td>{{ $hibajelent->allapot()->first()->allapot }}</td>
            @auth
                @if (auth()->user()->role === 'Admin')
            <td>
                    @include('delete-hibajelentes-button', ['hibajelentId'=>$hibajelent->id])
            </td>
                @endif
            @endauth
        </tr>

        @endforeach
    </tr>
</table>
<p><a href="{{ route('hibajelents.create') }}"><button type="button">Új hibajelentés küldése</button></a></p>
</x-app-layout>
