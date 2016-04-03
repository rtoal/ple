import java.util.TreeMap;
import java.util.regex.Pattern;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.function.Function;
import java.util.stream.Collectors;

public class WordCountApp {
    public static void main(String[] args) {
        Pattern nonWord = Pattern.compile("[^a-z']+");
        new BufferedReader(new InputStreamReader(System.in))
            .lines()
            .flatMap(line ->
                nonWord.splitAsStream(line.toLowerCase()))
            .filter(word -> !word.isEmpty())
            .collect(Collectors.groupingBy(Function.identity(),
                TreeMap::new, Collectors.counting()))
            .forEach((word, count) ->
                System.out.printf("%s %d\n", word, count));
    }
}
