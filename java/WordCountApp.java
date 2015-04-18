import java.util.regex.Pattern;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import java.io.IOException;

public class WordCountApp {

    private static Pattern wordPattern = Pattern.compile("(?i)[a-z']+");
    private static Map<String, Integer> counts = new TreeMap<>();

    public static void main(String[] args) {
        for (Scanner sc = new Scanner(System.in); sc.hasNextLine(); sc.nextLine()) {
            String word;
            while ((word = sc.findInLine(wordPattern)) != null) {
                word = word.toLowerCase();
                counts.put(word, counts.getOrDefault(word, 0) + 1);
            }
        }
        for (Map.Entry<String, Integer> e : counts.entrySet()) {
            System.out.printf("%s %d\n", e.getKey(), e.getValue());
        }
    }
}
