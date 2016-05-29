use customer::Customer;
use cook::Cook;
use std::time::Instant;
use std::sync::mpsc::{SyncSender,Receiver,sync_channel};
use std::fmt;

struct Order<'a> {
    content: String,
    customer: &'a Customer<'a>,
    cook_name: Option<String>
}

impl <'a> Order<'a> {
    fn new(customer: &Customer, content: String) -> Order<'a> {
        Order {
            content: content,
            customer: customer,
            cook: None,
        }
    }

    fn place(customer: &Customer, content: String, max_wait: i64, tx: SyncSender<Order>) -> bool {
        let order = Order::new(customer, content);
        let now = Instant::now();
        while now.elapsed().as_secs() < max_wait {
            let attempt = tx.try_send(order);
            if attempt.is_ok() {
                return true;
            }
        }
        return false;
    }

    fn begin(rx: Receiver<Order>) -> Option<Order> {
        rx.recv().ok();
    }

    fn serve(&self, cook: &Cook) {
        self.cook = Some(cook.name);
        self.customer.serve(self);
    }
}

impl <'a> fmt::Display for Order<'a> {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let attribute = match self.cook_name {
            Some(name) => format!("cooked by {}", name),
            None => format!("for {}", self.customer.name)
        };
        write!(f, "{} {}", self.content, attribute);
    }
}
