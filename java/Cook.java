class Cook extends Restaurant.Agent {

    Cook(String name) {
        super(name);
        this.setDaemon(true);
    }

    @Override public void run() {
        try {
            while (true) {
                Order order = Order.begin();
                go("cooking " + order, 12000);
                order.finish();
            }
        } catch (InterruptedException e) {
            say("got fired from the restaurant");
        }
    }
}
