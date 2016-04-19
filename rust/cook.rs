use std::sync::mpsc::Receiver;
use std::thread::JoinHandle;

use restaurant::Agent;
use order::Order;

struct Cook {
    rx: Receiver<Order>
}

impl Cook {
    fn new(name: String, order_rx: Receiver<Order>) -> JoinHandle<()> {
        let c = Cook {
            rx: order_rx
        };
        Self::new_agent(name, move || { c.run() });
    }

}

impl Agent for Cook {
    fn run(&self) {
        loop {
            if let Some(order) = Order::begin(self.rx) {
                self.act(format!("cooking {}", order), 12);
                order.serve(self);
            } else {
                self.log("got fired from restaurant");
                return;
            }
        }
    }
}
