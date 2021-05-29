public class TripleApp {
    public static void main(String[] args) {
        for (var c = 1; c <= 40; c++) {
            for (var b = 1; b < c; b++) {
                for (var a = 1; a < b; a++) {
                    if (a * a + b * b == c * c) {
                        System.out.printf("%d, %d, %d\n", a, b, c);
                    }
                }
            }
        }
    }
}
