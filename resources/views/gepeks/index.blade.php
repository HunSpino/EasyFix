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
                <td>
                    @include('delete-gepek-button', ['gepekId'=>$gepek->id])
                </td>
            </tr>
        @endforeach
    </tr>
</table>
<p><a href="{{ route('gepeks.create') }}"><button type="button">Új gép adatainak megadása</button></a></p>

</x-app-layout>
