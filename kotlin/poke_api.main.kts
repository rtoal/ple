@file:DependsOn(
    "org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.1",
    "com.squareup.okhttp3:okhttp:4.11.0",
    "org.json:json:20230618",
)

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import org.json.JSONObject

val baseUrl = "https://pokeapi.co/api/v2/pokemon/"
val pokemonNames = listOf("ditto", "pikachu", "mew", "weedle", "eevee")

suspend fun fetchPokemon(name: String) {
    val request = Request.Builder().url("$baseUrl$name").build()
    val response = OkHttpClient().newCall(request).execute()
    if (!response.isSuccessful) {
        println("Cannot fetch $name: HTTP ${response.code}")
        return
    }
    val jsonObject = JSONObject(response.body?.string() ?: return)
    println(
        "Name: ${jsonObject.getString("name")}, " +
        "Height: ${jsonObject.getInt("height")}, " +
        "Weight: ${jsonObject.getInt("weight")}, " +
        "Thread: ${Thread.currentThread().threadId()}")
}

runBlocking {
    for (name in pokemonNames) {
        launch(Dispatchers.IO) {
            fetchPokemon(name)
        }
    }
}
