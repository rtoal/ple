use std::f64::consts::PI;
use std::fmt;

struct Circle {
    x: f64,
    y: f64,
    radius: f64,
}

impl Circle {
    fn area(&self) -> f64 {
        PI * (self.radius * self.radius)
    }

    fn circumference(&self) -> f64 {
        PI * 2f64 * self.radius
    }
}

impl fmt::Display for Circle {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(
            f,
            "Circle {{ x: {}, y: {}, radius: {} }}",
            self.x, self.y, self.radius
        )
    }
}

fn main() {
    let origin = Circle { x: 1.0, y: 5.0, radius: 1.0};
    println!("{}", origin);
    println!("{} {}", origin.area(), origin.circumference());
}
