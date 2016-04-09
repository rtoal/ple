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

    @Override public void run() {
        try {
            for (int mealsEaten = 0; mealsEaten < 10;) {
                if (Order.place(this, "pancakes", 7000)) {
                    Order order = meal.take();
                    act("eating " + order, 10000);
                    mealsEaten++;
                } else {
                    act("can't place order, may return later", 5000);
                }
            }
            log("going home");
        } catch (InterruptedException e) {
            log("banished from restaurant");
        }
    }
}
