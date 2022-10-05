import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;

public class Customer extends Restaurant.Agent {
    private BlockingQueue<Order> meal = new SynchronousQueue<>();

    Customer(String name) {
        super(name);
    }

    void serve(Order order) throws InterruptedException {
        meal.put(order);
    }

    @Override
    public void run() {
        try {
            var mealsEaten = 0;
            while (mealsEaten < 10) {
                if (Order.place(this, "pancakes", 7000)) {
                    var order = meal.take();
                    act("eating " + order, 10000);
                    mealsEaten++;
                } else {
                    act("can't place order, may return later", 5000);
                }
            }
            log("going home");
        } catch (InterruptedException e) {
            log("has stopped coming to this restaurant");
            Thread.currentThread().interrupt();
        }
    }
}
