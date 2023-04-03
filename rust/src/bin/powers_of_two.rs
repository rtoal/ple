fn main() {
    powers_of_two(70);
}

fn powers_of_two(limit: i32) {
    let mut value = 1;
    while value < limit {
        println!("{}", value);
        value += value;
    }
}