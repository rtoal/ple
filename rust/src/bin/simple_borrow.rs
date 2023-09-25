fn main() {
    let a = vec![0, 1, 2];  // owned by variable a
    println!("{a:?}");
    let b = &a;             // b is just borrowing
    println!("{a:?}");      // Totally fine, a still the owner
    println!("{b:?}");      // Also fine, b is borrowing
}