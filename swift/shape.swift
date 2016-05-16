import Foundation

protocol Shape  {
    var area: Double { get }
    mutating func scale (factor: Double)
}

class Circle: Shape {
    var radius = 1.0
    var area: Double { return M_PI * radius * radius }
    init(radius: Double) {self.radius = radius}
    func scale (factor: Double) { radius *= factor }
}

func hello(s: Shape) -> String {
    return "Hello, my area is \(s.area)"
}

func doubleTheSize(of s: Shape) {
    s.scale(2)
}

var c = Circle(radius: 5)
print(hello(c))
doubleTheSize(of: c)
print(hello(c))
