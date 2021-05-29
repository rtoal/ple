public class PermutationsApp {
    public static void main(String[] args) {
        printPermutations(args, args.length-1);
    }

    private static void printPermutations(String[] a, int n) {
        if (n <= 0) {
            System.out.println(String.join("\t", a));
        } else {
            for (var i = 0; i < n; i++) {
                printPermutations(a, n-1);
                swap(a, n % 2 == 0 ? 0 : i, n);
            }
            printPermutations(a, n-1);
        }
    }

    private static void swap(String[] a, int i, int j) {
        var oldValueAtIndexI = a[i];
        a[i] = a[j];
        a[j] = oldValueAtIndexI;
    }
}
