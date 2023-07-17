fn main() {
    let mut a = 5;
    {
        let _c = a;
    }
    borrow(&mut a);
    println!("Here is a: {}", a);
}

fn borrow(_b: &mut u8) {
}
