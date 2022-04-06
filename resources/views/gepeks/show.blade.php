<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __($gepek->gep) }}
        </h2>
    </x-slot>
<p><a href="{{ route('gepeks.index') }}"><button type="button">Vissza a listára</button></a></p>
<h1>A {{ $gepek->gep }} gép</h1>
<p>Épület: {{ $gepek->epulet }}</p>
<p>Emelet: {{ $gepek->emelet }}</p>
<p>Terem: {{ $gepek->terem }}</p>
@auth
    @if (auth()->user()->role === 'Admin')
        <p>@include('delete-gepek-button', ['gepekId'=>$gepek->id])</p>
        <p><a href="{{ route('gepeks.edit', [$gepek->id]) }}"><button type="button">Szerkesztés</button></a></p>
    @endif
@endauth
</x-app-layout>
