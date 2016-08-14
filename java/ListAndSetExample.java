import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.HashSet;

public class ListAndSetExample {
    public static void main(String[] args) {
        List<String> words = Arrays.asList("do", "while", "if", "a");
        Set<Integer> sizes = new HashSet<>();
        for (String word: words) {
            sizes.add(word.length());
        }
        assert sizes.equals(new HashSet<Integer>(Arrays.asList(5,2,1)));
    }
}
