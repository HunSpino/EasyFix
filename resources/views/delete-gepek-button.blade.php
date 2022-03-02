<form method="POST" action="{{ route('gepeks.destroy', $gepekId) }}">
    @csrf
    @method('DELETE')
    <button type="submit">Törlés</button>
</form>

