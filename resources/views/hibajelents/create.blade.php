@extends('layout')

@section('title','Új hiba feljegyzése')

@section('content')
<h1>New bug report</h1>
    <form method='POST' action="{{ route('hibajelents.store') }}">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div>
            A jelenteni való hiba: <br>
            <input type="text" name="hiba" value="{{ old('hiba') }}">
            @error('hiba')
                <p>{{ $message }}</p>
            @enderror
        </div>
        <div>
            A hibajelentő felhasználó "ID"-ja: <br>
            <input type="number" name="user_id" value="{{ old('user_id') }}">
            @error('user_id')
                <p>{{ $message }}</p>
            @enderror
        </div>
        <div>
            A hibát tartalmazó gép "ID"-ja: <br>
            <input type="number" name="gepek_id" value="{{ old('gepek_id') }}">
            @error('gepek_id')
                <p>{{ $message }}</p>
            @enderror
        </div>
        <div>
            <input type="submit" value="Create" class="btn btn-primary">
            <a href="{{ route('hibajelents.index') }}"><button type="button">Mégse</button></a>
        </div>
    </form>
@endsection
