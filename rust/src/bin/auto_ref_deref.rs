
fn main() {
    let (x, y) = (1, 2);
    let (rx, ry) = (&x, &y);
    let message = String::from("Hello, world!");

    println!("{}", std::cmp::min(*rx, *ry)); // Explicit deref, ok
    println!("{}", std::cmp::min(rx, ry));   // Auto-dereference!
    println!("{}", (&message).len());        // Explicit ref, ok
    println!("{}", message.len());           // Auto-reference!
}