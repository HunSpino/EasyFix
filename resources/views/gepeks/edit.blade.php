@extends('layout')

@section('content')

<h1>Terem edit</h1>
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
@endsection
