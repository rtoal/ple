fn main() {
    let mut a = 5;
    let c = a;
    borrow(&mut a);
    println!("Here is a: {a} and c: {c}");
}

fn borrow(b: &mut u8) {
    println!("{b}")
}
