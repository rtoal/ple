fn main() {
    let x;
    {
        let y = 5;
        x = &y;  // ERROR `y` does not live long enough
    }
    println!("{x}");
}
