import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

public class Order {
    private static BlockingQueue<Order> orders =
            new ArrayBlockingQueue<>(5);

    private String content;
    private Customer customer;
    private Cook preparedBy;

    Order(Customer customer, String content) {
        this.customer = customer;
        this.content = content;
    }

    boolean place() throws InterruptedException {
        return orders.offer(this, 10, TimeUnit.SECONDS);
    }

    static Order begin() throws InterruptedException {
        return orders.take();
    }

    void finish() throws InterruptedException {
        preparedBy = (Cook)Thread.currentThread();
        customer.serve(this);
    }

    @Override public String toString() {
        return content + " for " + customer.getName() +
            (preparedBy == null ? "" : " by " + preparedBy.getName());
    }
}
