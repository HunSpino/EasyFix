<form method="POST" action="{{ route('hibajelents.destroy', $hibajelentId) }}">
    @csrf
    @method('DELETE')
    <button type="submit">Törlés</button>
</form>

