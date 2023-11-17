const FIVE: i32 = 5;

fn five() -> &'static i32 {
    &FIVE
}

fn main() {
    println!("{}", five());
}