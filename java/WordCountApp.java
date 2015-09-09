import java.util.TreeMap;
import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import static java.util.function.Function.identity;
import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.counting;

public class WordCountApp {

    public static void main(String[] args) {
        ((new BufferedReader(new InputStreamReader(System.in)))
            .lines()
            .flatMap(line -> Arrays.stream((line.toLowerCase()).split("[^a-z']+")))
            .collect(groupingBy(identity(), TreeMap::new, counting())))
        .forEach((word, count) -> System.out.printf("%s %d\n", word, count));
    }
    
}