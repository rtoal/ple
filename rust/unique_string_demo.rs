extern crate string_generator;
fn main() {
    let mut gen = string_generator::string_generator::generator();
    println!("{}", gen.generate("abc"));
    println!("{}", gen.generate("abc"));
    println!("{}", gen.generate("def"));
    println!("{}", gen.generate("abc"));
    println!("{}", gen.generate("def"));
    println!("{}", gen.generate("ghi"));
}
