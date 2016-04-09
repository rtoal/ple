import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;

public class Customer extends Restaurant.Agent {
    private BlockingQueue<Order> meals = new SynchronousQueue<>();

    Customer(String name) {
        super(name);
    }

    @Override public void run() {
        try {
            for (int i = 0; i < 10; i++) {
                if (new Order(this, "pancakes").place()) {
                    Order order = meals.take();
                    go("eating " + order, 20000);
                } else {
                    go("can't place order, going shopping", 5000);
                }
            }
        } catch (InterruptedException e) {
            say("in trouble, going home");
        }
    }

    void serve(Order order) throws InterruptedException {
        meals.put(order);
    }
}
