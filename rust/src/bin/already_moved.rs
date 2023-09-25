fn main() {
    let a = vec![0, 1, 2];  // owned by variable a
    println!("{a:?}");
    let b = a;              // now owned by variable b
    // println!("{a:?}");   // WILL NOT COMPILE, vector was moved
    println!("{b:?}");      // This is ok, b is the owner now
}
