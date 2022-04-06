<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Szerkesztés') }}
        </h2>
    </x-slot>
<form method='POST' action="{{ route('hibajelents.update', $hibajelent->id) }}">
        @method('PATCH')
        @csrf
        <div>
            A jelenteni való hiba: <br>
            <input type="text" name="hiba" value="{{ $hibajelent->hiba }}">
        </div>
        <div>
            A hibajelentő felhasználó "ID"-ja: <br>
            <input type="number" name="user_id" value="{{ $hibajelent->user_id }}">
        </div>
        <div>
            A hibát tartalmazó gép "ID"-ja: <br>
            <input type="number" name="gepek_id" value="{{ $hibajelent->gepek_id }}">
        </div>
        <div>
            Állapot: <br>
            <input type="number" name="allapot_id" value="{{ $hibajelent->allapot_id}}">
        </div>
        <div>
            <input type="submit" value="Edit">
            <a href="{{ route('hibajelents.show',[$hibajelent->id]) }}"><button type="button">Mégse</button></a>
        </div>

        </x-app-layout>
