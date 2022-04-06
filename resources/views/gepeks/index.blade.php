<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('A gépek listája') }}
        </h2>
    </x-slot>
<p><a href="{{ route('dashboard') }}"><button type="button">Vissza a főoldalra</button></a></p>
<table>
    <tr>
        <th>Épület</th>
        <th>Emelet</th>
        <th>Terem</th>
        <th>Gép</th>
        @foreach ($gepeks as $gepek)
            <tr>
                <td>{{ $gepek->epulet }}</td>
                <td>{{ $gepek->emelet }}</td>
                <td>{{ $gepek->terem }}</td>
                <td>
                    <a href="{{ route('gepeks.show', [$gepek->id]) }}">{{ $gepek->gep }}</a>
                </td>
                @auth
                @if (auth()->user()->role === 'Admin')
                <td>
                    @include('delete-gepek-button', ['gepekId'=>$gepek->id])
                </td>
                @endif
                @endauth
            </tr>
        @endforeach
    </tr>
</table>
@auth
@if (auth()->user()->role === 'Admin')
<p><a href="{{ route('gepeks.create') }}"><button type="button">Új gép adatainak megadása</button></a></p>
@endif
@endauth
</x-app-layout>
