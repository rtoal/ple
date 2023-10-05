sealed class SongFetchError {
    object IllegalToken: SongFetchError()
    object NoSuchSong: SongFetchError()
    class InsufficientFunds(shortBy: Int): SongFetchError()
}

sealed class SongFetchResult {
    class Success(val songId: String): SongFetchResult()
    class Error(val error: SongFetchError): SongFetchResult()
}

interface MarketPlace {
    suspend fun getSong(songId: String): SongFetchResult
}
