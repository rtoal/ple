fn main() {
    let mut picks = vec![8, 21, 5, 1, 2];
    say_hello();
    picks.push(34);
    println!("{:?}", picks);
} // picks goes out of scope and is dropped (freed) here

fn say_hello() {
    let mut greeting = String::from("Hello");
    greeting.push_str(", world!");
    println!("{}", greeting);
} // greeting goes out of scope and is dropped (freed) here
