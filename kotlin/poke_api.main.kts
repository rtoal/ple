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

data class PokeInfo(val name: String, val height: Int, val weight: Int)

suspend fun fetchPokemon(name: String) {
    println("Fetching $name on ${Thread.currentThread().name}")
    val request = Request.Builder().url("$baseUrl$name").build()
    val response = OkHttpClient().newCall(request).execute()
    if (!response.isSuccessful) {
        println("Cannot fetch $name: HTTP ${response.code}")
        return
    }
    val jsonObject = JSONObject(response.body?.string() ?: return)
    println(PokeInfo(
        jsonObject.getString("name"),
        jsonObject.getInt("height"),
        jsonObject.getInt("weight")))
}

runBlocking {
    for (name in pokemonNames) {
        launch(Dispatchers.IO) {
            fetchPokemon(name)
        }
    }
    println("The fetches are underway")
}
println("The fetches are done")

