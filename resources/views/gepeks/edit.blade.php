<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Szerkesztés') }}
        </h2>
    </x-slot>
    <form method='POST' action="{{ route('gepeks.update', $gepek->id) }}">
        @method('PATCH')
        @csrf
        <div>
            Épület: <br>
            <input type="text" name="epulet" value="{{ $gepek->epulet }}"></input>
        </div>
        <div>
            Emelet: <br>
            <input type="number" name="emelet" value="{{ $gepek->emelet }}">
        </div>
        <div>
            Terem: <br>
            <input type="number" name="terem" value="{{ $gepek->terem }}">
        </div>
        <div>
            Gép: <br>
            <input type="number" name="gep" value="{{ $gepek->gep }}">
        </div>
        <div>
            <input type="submit" value="Edit">
            <a href="{{ route('gepeks.show',[$gepek->id]) }}"><button type="button">Mégse</button></a>
        </div>
    </form>
    </x-app-layout>
