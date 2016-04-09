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
            for (int i = 0; i < 10; i++) {
                if (Order.place(this, "pancakes", 7000)) {
                    Order order = meal.take();
                    act("eating " + order, 10000);
                } else {
                    act("can't place order, may return later", 5000);
                }
            }
        } catch (InterruptedException e) {
            log("banished from restaurant");
        }
    }
}
