fn main() {
    let a = String::from("hi");   // owned by variable a
    println!("{}", is_long(&a));  // pass a reference to borrow
    println!("{a}");              // a still owns the string
}

fn is_long(b: &String) -> bool {  // b is just borrowing
    b.len() > 10                  // (i.e., b is not the owner)
}                                 // done borrowing
