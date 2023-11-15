fn main() {
    let mut a = String::from("wo"); // owned by variable a
    add_ah(&mut a);                 // pass a reference to borrow
    println!("{a}");                // a still owns the string
}

fn add_ah(b: &mut String) {         // b is just borrowing
    b.push_str("ah")                // (i.e., b is not the owner)
}                                   // done borrowing
