import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

public class Order {
    private static BlockingQueue<Order> orders =
            new ArrayBlockingQueue<>(5);

    private String content;
    private Customer customer;
    private Cook cook;

    private Order(Customer customer, String content) {
        this.customer = customer;
        this.content = content;
    }

    static boolean place(Customer customer, String content, int maxWait)
            throws InterruptedException {
        Order order = new Order(customer, content);
        return orders.offer(order, maxWait, TimeUnit.MILLISECONDS);
    }

    static Order begin() throws InterruptedException {
        return orders.take();
    }

    void serve() throws InterruptedException {
        cook = (Cook)Thread.currentThread();
        customer.serve(this);
    }

    @Override public String toString() {
        return content + (cook == null ? " for " + customer.getName()
                : " cooked by " + cook.getName());
    }
}
