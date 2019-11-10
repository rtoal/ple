class Rectangle {
    let width: Double;
    let height: Double;

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    var description: String {
        return "Rectangle \(self.width) x \(self.height)"
    }

    func area () -> Double {
        return self.width * self.height
    }
}

class Square: Rectangle {
    init(side: Double) {
        super.init(width: side, height: side)
    }

    convenience init() {
        self.init(side: 1.0)
    }

    override var description: String {
        return "Square with side \(self.width)"
    }
}

let r = Rectangle(width: 20, height: 30)
assert(r.width == 20)
assert(r.area() == 600)
assert(r.description == "Rectangle 20.0 x 30.0")

let s = Square(side: 50)
assert(s.width == 50)
assert(s.area() == 2500)
assert(s.description == "Square with side 50.0")

