public class Restaurant {

    static class Agent extends Thread {
        Agent(String name) {
            super(name);
        }
        void say(String message) {
            System.out.printf("%s %s\n", currentThread().getName(), message);
        }
        void go(String message, int maxDelay) throws InterruptedException {
            say(message);
            Thread.sleep((int)Math.random() * maxDelay/2 + maxDelay/2);
        }
    }

    public static void main(String[] args) {
        for (int i = 0; i < 3; i++) {
            new Cook("Cook" + i).start();
        }
        for (int i = 0; i < 15; i++) {
            new Customer("Customer" + i).start();
        }
    }
}
