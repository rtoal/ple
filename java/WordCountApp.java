import java.util.regex.Pattern;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import java.io.IOException;

public class WordCountApp {

    public static void main(String[] args) {
        Pattern wordPattern = Pattern.compile("(?i)[a-z']+");
        Map<String, Integer> counts = new TreeMap<>();

        for (Scanner scanner = new Scanner(System.in);
                scanner.hasNextLine();
                scanner.nextLine()) {
            String word;
            while ((word = scanner.findInLine(wordPattern)) != null) {
                word = word.toLowerCase();
                counts.put(word, counts.getOrDefault(word, 0) + 1);
            }
        }
        for (Map.Entry<String, Integer> e : counts.entrySet()) {
            System.out.printf("%s %d\n", e.getKey(), e.getValue());
        }
    }
}
