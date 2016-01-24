fn main() {
    let mut a = 5;
    let ref c = a;
    borrow(&mut a);
    println!("Here is a: {}", a);
}

fn borrow(b: &mut u8) {
}
