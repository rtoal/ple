fun getDataFromApi(onSuccess: (data: String) -> Unit, onError: (error: Exception) -> Unit) {
    try {
        val data = // retrieve data from API
        onSuccess(data)
    } catch (e: Exception) {
        onError(e)
    }
}

getDataFromApi(
    onSuccess = { data -> /* handle success */ },
    onError = { error -> /* handle error */ }
)

