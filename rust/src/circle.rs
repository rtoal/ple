pub struct Circle {
    center: (f64, f64),
    radius: f64,
}

impl Circle {
    pub fn new(center: (f64, f64), radius: f64) -> Self {
        Circle { center, radius }
    }

    pub fn center(&self) -> (f64, f64) {
        self.center
    }

    pub fn area(&self) -> f64 {
        std::f64::consts::PI * self.radius * self.radius
    }
}

impl std::fmt::Display for Circle {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(
            f,
            "(x: {}, y: {}, radius: {})",
            self.center.0, self.center.1, self.radius
        )
    }
}
