<x-guest-layout>
    <x-auth-card>
        <x-slot name="logo">
            <a href="/">
                <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
            </a>
        </x-slot>
    <h1>Üdvözöllek a kezdőoldalon!</h1>
    <p>Ennyi személlyel dolgozik a cégünk: {{ $userCount }}</p>
    <p>Ennyi géppel dolgozik cégünk: {{ $gepekCount }}</p>
    <p>
        <a href="{{ route('login') }}"><button type="button">Log in</button></a>
    </p>
    @if (Route::has('register'))
    <p>
        <a href="{{ route('register') }}"><button type="button">Register</button></a>
    </p>
    @endif
    </x-auth-card>
</x-guest-layout>

