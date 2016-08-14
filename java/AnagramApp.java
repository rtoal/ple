public class AnagramApp {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("Exactly one argument is required");
            System.exit(1);
        }
        String word = args[0];
        generatePermutations(word.toCharArray(), word.length()-1);
    }

    private static void generatePermutations(char[] a, int n) {
        if (n == 0) {
            System.out.println(String.valueOf(a));
        } else {
            for (int i = 0; i < n; i++) {
                generatePermutations(a, n-1);
                swap(a, n % 2 == 0 ? 0 : i, n);
            }
            generatePermutations(a, n-1);
        }
    }

    private static void swap(char[] a, int i, int j) {
        char saved = a[i];
        a[i] = a[j];
        a[j] = saved;
    }
}
