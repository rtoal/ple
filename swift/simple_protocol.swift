import Foundation

protocol Describable {
    var description: String { get }
}

struct Circle: Describable {
    var radius = 1.0
    var description: String {return "Circle with radius \(radius)"}
}

enum Direction: Int, Describable {
    case North, East, South, West
    var description: String {return "Bearing \(90 * self.rawValue)"}
}

let a: [Describable] = [Circle(radius: 5), Direction.West]
assert(a[0].description == "Circle with radius 5.0")
assert(a[1].description == "Bearing 270")
