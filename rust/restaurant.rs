use std::sync::mpsc::sync_channel;

mod cook;
mod customer;
mod order;

use cook::Cook;
use customer::Customer;
use order::Order;

mod restaurant {
    use std::thread;
    use std::thread::{JoinHandle,Builder};
    use std::time::Duration;

    trait Agent {
        fn log(&self, action: &'static str) {
            let cur = thread::current();
            if let Some(name) = cur.name() {
                println!("{} {}", name, action);
            } else {
                panic!("Invalid method call");
            }
        }

        fn act(&self, action: String, time: u64) {
            self.log(action);
            thread::sleep(Duration::from_secs(time));
        }

        fn new_agent<F>(name: String, run: F) -> JoinHandle<()> 
            where F: FnOnce() -> (), F: Send + 'static {
            if let Ok(thread) = Builder::new().name(name).spawn(run) {
                thread
            } else {
                panic!("Could not create thread");
            }
        }

        fn run(&self);
    }
}

fn main() {
    let (order_tx, order_rx) = sync_channel();
    for x in 0..3 {
        Cook::new_cook(format!("Cook-{}", x), order_rx)
    }
    let customers = vec![];
    for x in 0..15 {
        customers.push(Customer::new_customer(format!("Customer-{}", x), order_tx.clone()));
    }
    for customer in customers {
        customer.join();
    }
}
