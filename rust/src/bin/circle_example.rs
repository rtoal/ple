use rust_examples::circle::Circle;

fn main() {
    // Create a Circle instance
    let circle = Circle::new((0.0, 0.0), 5.0);

    // Get and print the center and area
    let center = circle.center();
    let area = circle.area();

    println!("Circle: {}", circle);
    println!("Circle Center: {:?}", center);
    println!("Circle Area: {:.2}", area);
}
