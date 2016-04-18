use restaurant::Agent;
use order::Order;
use std::sync::mpsc::{channel,Sender,Receiver,SyncSender};
use std::thread::JoinHandle;


struct Customer {
    tx: Sender<Order>,
    rx: Receiver<Order>,
    order_queue: SyncSender<Order>
}



impl Agent for Customer {
    fn run(&self) {
        let mut meals_eaten = 0;
        while meals_eaten < 10 {
            if Order::place(self, "pancakes", 7, self.order_queue) {
                if let Ok(order) = self.rx.recv() {
                    self.act(format!("eating {}", order), 10);
                    meals_eaten += 1;
                } else {
                    self.log("banished from restaurant");
                }
            } else {
                self.act("can't place order, may return later", 5);
            }
        }
        self.log("going home");
    }
}

impl Customer {
    fn serve(&self, order: Order) {
        if let Err(why) = self.tx.send(order) {
            panic!("Error serving customer: {}", why);
        }
    }
    
    fn new_customer(name: String, order_queue: SyncSender<Order>) -> JoinHandle<()> {
        let (tx, rx) = channel();
        let c = Customer {
            tx: tx,
            rx: rx,
            order_queue: order_queue
        };
        Self::new(name, move || { c.run(); })
    }
}
