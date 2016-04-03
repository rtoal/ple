import java.util.Scanner;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class TraditionalWordCountApp {
    public static void main(String[] args) {
        SortedMap<String, Integer> counts = new TreeMap<>();
        Pattern wordPattern = Pattern.compile("[a-z']+");
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String line = scanner.nextLine().toLowerCase();
            Matcher matcher = wordPattern.matcher(line);
            while (matcher.find()) {
                String word = matcher.group();
                counts.put(word, counts.getOrDefault(word, 0) + 1);
            }
        }
        for (SortedMap.Entry<String, Integer> e : counts.entrySet()) {
            System.out.printf("%s %d\n", e.getKey(), e.getValue());
        }
    }
}
