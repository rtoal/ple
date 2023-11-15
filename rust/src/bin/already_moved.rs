fn main() {
    let a = String::from("hi");   // owned by variable a
    println!("{a:?}");
    let b = a;                    // now owned by variable b
    // println!("{a:?}");         // WILL NOT COMPILE, string was moved
    println!("{b:?}");            // This is ok, b is the owner now
}
