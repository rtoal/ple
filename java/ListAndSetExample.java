import java.util.List;
import java.util.Set;
import java.util.HashSet;

public class ListAndSetExample {
    public static void main(String[] args) {
        var sizes = new HashSet<Integer>();
        for (var word : List.of("do", "while", "if", "a")) {
            sizes.add(word.length());
        }
        assert sizes.equals(Set.of(5, 2, 1));
    }
}
