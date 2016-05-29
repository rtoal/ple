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
        PI * 2.0 * self.radius
    }
    fn new(x: f64, y: f64, radius: f64, color: String) -> Circle {
        Circle {x: x, y: y, radius: radius, color: color}
    }

}

fn main() {
    let origin = Circle::new(1.0, 5.0, 1.0, "black".to_string());
    println!("{}", Circle::area(&origin));
}
