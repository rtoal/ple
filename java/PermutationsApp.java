import java.util.Collections;
import java.util.List;
import java.util.Arrays;

public class PermutationsApp {
    public static void main(String[] args) {
        printPermutations(Arrays.asList(args), args.length - 1);
    }

    private static void printPermutations(List<String> a, int n) {
        if (n <= 0) {
            System.out.println(String.join("\t", a));
        } else {
            for (var i = 0; i < n; i++) {
                printPermutations(a, n - 1);
                Collections.swap(a, n % 2 == 0 ? 0 : i, n);
            }
            printPermutations(a, n - 1);
        }
    }
}
