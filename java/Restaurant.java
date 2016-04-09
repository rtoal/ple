public class Restaurant {

    static class Agent extends Thread {
        Agent(String name) {
            super(name);
        }
        void log(String action) {
            synchronized (System.out) {
                System.out.println(getName() + " " + action);
            }
        }
        void act(String action, int time) throws InterruptedException {
            log(action);
            Thread.sleep((int)(Math.random() * time/2 + time/2));
        }
    }

    public static void main(String[] args) {
        for (int i = 0; i < 3; i++) {
            new Cook("Cook-" + i).start();
        }
        for (int i = 0; i < 15; i++) {
            new Customer("Customer-" + i).start();
        }
    }
}
