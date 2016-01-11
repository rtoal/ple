import java.util.TreeMap;
import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.function.Function;
import java.util.stream.Collectors;

public class WordCountApp {
    public static void main(String[] args) {
        ((new BufferedReader(new InputStreamReader(System.in)))
            .lines()
            .flatMap(line ->
                Arrays.stream(line.toLowerCase().split("[^a-z']+")))
            .collect(Collectors.groupingBy(Function.identity(),
                TreeMap::new, Collectors.counting())))
        .forEach((word, count) ->
            System.out.printf("%s %d\n", word, count));
    }
}
