import java.util.Scanner;
import java.util.TreeMap;
import java.util.regex.Pattern;

public class TraditionalWordCountApp {
    public static void main(String[] args) {
        var counts = new TreeMap<String, Integer>();
        var wordPattern = Pattern.compile("[a-z']+");
        var scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            var line = scanner.nextLine().toLowerCase();
            var matcher = wordPattern.matcher(line);
            while (matcher.find()) {
                var word = matcher.group();
                counts.put(word, counts.getOrDefault(word, 0) + 1);
            }
        }
        for (var e : counts.entrySet()) {
            System.out.printf("%s %d\n", e.getKey(), e.getValue());
        }
    }
}
