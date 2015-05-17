public class AnagramApp {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("Exactly one argument is required");
            System.exit(1);
        }
        String word = args[0];
        generatePermutations(word.length()-1, word.toCharArray());
    }

    private static void generatePermutations(int n, char[] a) {
        if (n == 0) {
            System.out.println(String.valueOf(a));
        } else {
            for (int i = 0; i <= n; i++) {
                generatePermutations(n-1, a);
                swap(a, n % 2 == 0 ? i : 0, n);
            }
        }
    }

    private static void swap(char[] a, int i, int j) {
        char saved = a[i];
        a[i] = a[j];
        a[j] = saved;
    }
}
