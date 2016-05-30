fn main() {
    let mut a = 3;
    f(&mut a);
    assert!(a == 5);
}

fn f(b: &mut u8) {
    *b = 5;
}
