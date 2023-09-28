mod shapes {
    pub struct Rectangle {
        width: f64,          // we decided not to use pub here
        height: f64,         // nor here
    }

    impl Rectangle {
        pub fn new(width: f64, height: f64) -> Self {
            Rectangle { width, height }
        }

        pub fn dimensions(&self) -> (f64, f64) {
            (self.width, self.height)
        }

        pub fn area(&self) -> f64 {
            self.width * self.height
        }
    }
}

fn main() {
    let r = shapes::Rectangle::new(5.0, 10.0);
    println!("Area: {}", r.area());             // Common syntax
    assert_eq!(r.dimensions(), (5.0, 10.0));
}

