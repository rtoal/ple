public class PrimePrinterApp {
    public static void main(String[] args) {
        for (var i = 1; i <= 100; i++) {
            final var candidate = i;
            new Thread(() -> {
                for (var divisor = 2; divisor <= candidate; divisor++) {
                    if (divisor == candidate) {
                        synchronized (System.out) {
                            System.out.print(" " + candidate);
                        }
                    } else if (candidate % divisor == 0) {
                        break;
                    }
                }
            }).start();
        }
    }
}
