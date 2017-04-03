protocol Shape {
    func area() -> Double
}

struct Square: Shape {
    var side: Double
    func area() -> Double {return side * side}
}

let s = Square(side: 10)
assert(s.area() == 100)

protocol Boundaried {
    func perimeter() -> Double
}

extension Square: Boundaried {
    func perimeter() -> Double {return side * 4}
}

assert(s.perimeter() == 40)

import Foundation
struct Circle: Shape, Boundaried {
    var radius: Double
    func area() -> Double {return Double.pi * radius * radius}
    func perimeter() -> Double {return 2 * Double.pi * radius}
}

let c = Circle(radius: 8)
assert(c.area() == 64 * Double.pi)
assert(c.perimeter() == 16 * Double.pi)

extension Shape {
    var json: String { return "{\"area\": \(area())}" }
}

assert(s.json == "{\"area\": 100.0}")

extension Square {
    var json: String {return "{\"kind\": \"square\", \"side\": \(side)}"}
}

assert(s.json == "{\"kind\": \"square\", \"side\": 10.0}")
