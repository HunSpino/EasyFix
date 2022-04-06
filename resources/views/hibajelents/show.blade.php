<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('A hibajelentés') }}
        </h2>
    </x-slot>
<p><a href="{{ route('hibajelents.index') }}"><button type="button">Vissza a listára</button></a></p>
<h1>{{ $hibajelent->user()->first()->name }} hiba jelentése</h1>
<p>Hiba: {{ $hibajelent->hiba }}</p>
<p>A gépe: {{ $hibajelent->gepek()->first()->gep }}</p>
<p>Beküldési dátum: {{ $hibajelent->created_at }}</p>
<h3>Állapot: {{ $hibajelent->allapot()->first()->allapot }}</h3>
@auth
    @if (auth()->user()->role === 'Admin')
        <p> @include('delete-hibajelentes-button', ['hibajelentId'=>$hibajelent->id])</p>
        <p><a href="{{ route('hibajelents.edit', [$hibajelent->id]) }}"><button type="button">Szerkesztés</button></a></p>
    @endif
@endauth
</x-app-layout>
