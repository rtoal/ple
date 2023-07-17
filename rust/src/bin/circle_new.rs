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
        PI * 2.0 * self.radius
    }

    fn center(&self) -> (f64, f64) {
        (self.x, self.y)
    }

    fn new(x: f64, y: f64, radius: f64) -> Circle {
        Circle {x: x, y: y, radius: radius}
    }
}

impl fmt::Display for Circle {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(
            f,
            "Circle {{ x: {}, y: {}, radius: {}}}",
            self.x, self.y, self.radius
        )
    }
}

fn main() {
    let origin = Circle::new(1.0, 5.0, 1.0);
    println!("{}", Circle::area(&origin));
    println!("{}", Circle::circumference(&origin));
    println!("{:#?}", Circle::center(&origin));
}
