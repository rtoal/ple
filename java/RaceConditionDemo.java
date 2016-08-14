import java.util.*;
import java.util.concurrent.*;

public class RaceConditionDemo {
    private static Map<Integer, Integer> bad = new HashMap<>();
    private static Map<Integer, Integer> good = new ConcurrentHashMap<>();

    public static void main(String[] args) throws Exception {
        ExecutorService service = Executors.newFixedThreadPool(3);
        for (int i = 0; i < 3; i++) {
            final int key = i;
            service.submit(() -> {
                for (int times = 0; times < 10000000; times++) {
                    bad.put(key, bad.getOrDefault(key, 0) + 1);
                    good.put(key, good.getOrDefault(key, 0) + 1);
                }
            });
        }
        service.shutdown();
        service.awaitTermination(3, TimeUnit.MINUTES);
        System.out.println("Bad map: " + bad);
        System.out.println("Good map: " + bad);
    }
}
