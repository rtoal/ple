class Cook extends Restaurant.Agent {

    Cook(String name) {
        super(name);
        this.setDaemon(true);
    }

    @Override public void run() {
        try {
            while (true) {
                Order order = Order.begin();
                act("cooking " + order, 12000);
                order.serve();
            }
        } catch (InterruptedException e) {
            log("got fired from the restaurant");
        }
    }
}
