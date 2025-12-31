import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.concurrent.Executors;
import org.json.JSONObject;

String baseUrl = "https://pokeapi.co/api/v2/pokemon/";
HttpClient httpClient = HttpClient.newHttpClient();
String[] names = { "ditto", "pikachu", "mew", "weedle", "eevee" };

void main() {
    try (var service = Executors.newVirtualThreadPerTaskExecutor()) {
        for (var name : names) {
            service.submit(() -> {
                fetchPokemon(name);
            });
        }
    }
}

void fetchPokemon(String name) {
    var url = URI.create(baseUrl + name);
    var request = HttpRequest.newBuilder(url).build();
    try {
        var response = httpClient.send(
                request, HttpResponse.BodyHandlers.ofString());
        if (response.statusCode() >= 400) {
            throw new RuntimeException("HTTP " + response.statusCode());
        }
        var jsonObject = new JSONObject(response.body());
        IO.println(
                String.format(
                        "Name: %s, Height: %d, Weight: %d (Thread %d)",
                        jsonObject.getString("name"),
                        jsonObject.getInt("height"),
                        jsonObject.getInt("weight"),
                        Thread.currentThread().threadId()));
    } catch (Exception e) {
        IO.println(
            "Failed to fetch " + name + ": " + e.getLocalizedMessage());
    }
}
