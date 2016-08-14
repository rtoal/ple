fn main() {
    let mut a = 3;
    f(&mut a);
    assert!(a == 5);
}

fn f(b: &mut u8) {  // borrow the 8-bit unigned value
    *b = 5;
}                   // transfer ownership back
