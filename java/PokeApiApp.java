import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.concurrent.Executors;
import org.json.JSONObject;

public class PokeApiApp {
    static HttpClient httpClient = HttpClient.newHttpClient();
    static String[] pokemonNames = {
            "ditto", "pikachu", "mew", "weedle", "eevee" };

    public static void main(String[] args) {
        try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
            for (String name : pokemonNames) {
                executor.submit(() -> {
                    fetchPokemon(name);
                });
            }
        }
    }

    private static void fetchPokemon(String name) {
        var url = URI.create(
                "https://pokeapi.co/api/v2/pokemon/" + name);
        var httpRequest = HttpRequest.newBuilder(url).build();
        try {
            HttpResponse<String> response = httpClient.send(
                    httpRequest, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() < 400) {
                var jsonObject = new JSONObject(response.body());
                System.out.printf(
                        "Name: %s, Height: %d, Weight: %d%n",
                        jsonObject.getString("name"),
                        jsonObject.getInt("height"),
                        jsonObject.getInt("weight"));
            } else {
                System.err.println("Failed to fetch " + name);
            }
        } catch (IOException | InterruptedException e) {
            System.err.println("Failed to fetch " + name);
        }
    }
}
