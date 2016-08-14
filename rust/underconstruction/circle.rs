use std::f64::consts::PI;

struct Circle {
    x: f64,
    y: f64,
    radius: f64,
    color: String
}

impl Circle {
    fn area(&self) -> f64 {
        PI * (self.radius * self.radius)
    }

    fn circumference(&self) -> f64 {
        PI * 2f64 * self.radius
    }
}

fn main() {
    let origin = Circle { x: 1.0, y: 5.0, radius: 1.0, color: "black".to_string() }; 
    println!("{}", origin.area());
}
