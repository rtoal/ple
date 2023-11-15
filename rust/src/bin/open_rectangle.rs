#[derive(Debug)]
struct Rectangle {
    width: f64,
    height: f64,
}

impl Rectangle {
    fn new(width: f64, height: f64) -> Self {
        Rectangle { width, height }
    }

    fn dimensions(&self) -> (f64, f64) {
        (self.width, self.height)
    }

    fn area(&self) -> f64 {
        self.width * self.height
    }
}

fn main() {
    let r = Rectangle::new(5.0, 10.0);
    println!("{:?}", r);
    println!("Area: {}", Rectangle::area(&r));  // Rare syntax
    println!("Area: {}", r.area());             // Common syntax
    assert_eq!(r.dimensions(), (5.0, 10.0));
    println!("{}", r.width);
}
