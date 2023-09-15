import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.concurrent.Executors;
import org.json.JSONObject;

public class PokeApiApp {
    static String baseUrl = "https://pokeapi.co/api/v2/pokemon/";
    static HttpClient httpClient = HttpClient.newHttpClient();
    static String[] pokemonNames = {
            "ditto", "pikachu", "mew", "weedle", "eevee" };

    public static void main(String[] args) {
        try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
            for (var name : pokemonNames) {
                executor.submit(() -> {
                    fetchPokemon(name);
                });
            }
        }
    }

    private static void fetchPokemon(String name) {
        var url = URI.create(baseUrl + name);
        var request = HttpRequest.newBuilder(url).build();
        try {
            var response = httpClient.send(
                    request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() >= 400) {
                throw new RuntimeException(
                        "HTTP status code " + response.statusCode());
            }
            var jsonObject = new JSONObject(response.body());
            synchronized (System.out) {
                System.out.printf(
                        "Name: %s, Height: %d, Weight: %d%n",
                        jsonObject.getString("name"),
                        jsonObject.getInt("height"),
                        jsonObject.getInt("weight"));
            }
        } catch (Exception e) {
            System.err.println("Failed to fetch " + name + ": "
                    + e.getLocalizedMessage());
        }
    }
}
