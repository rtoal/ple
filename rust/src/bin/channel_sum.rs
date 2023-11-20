use std::thread;
use std::sync::mpsc;

fn sum(a: &[i32], tx: mpsc::Sender<i32>) {
    let result: i32 = a.iter().sum();
    tx.send(result).expect("Error sending result");
}

fn main() {
    const SIZE: usize = 10000;
    let nums: [i32; SIZE] = core::array::from_fn(|i| i as i32);

    let (tx1, rx) = mpsc::channel();
    let tx2 = tx1.clone();
    let handle1 = thread::spawn(move || { sum(&nums[..SIZE/2], tx1); });
    let handle2 = thread::spawn(move || { sum(&nums[SIZE/2..], tx2); });

    let result = match (rx.recv(), rx.recv()) {
        (Ok(result1), Ok(result2)) => result1 + result2,
        _ => { eprintln!("Error receiving results"); return; }
    };
    match (handle1.join(), handle2.join()) {
        (Ok(_), Ok(_)) => {},
        _ => { eprintln!("Error joining threads"); return; }
    }
    assert_eq!(result, 49995000);
}
