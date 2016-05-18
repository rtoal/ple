import Foundation

protocol Summarizable {
    var summary: String { get }
}

struct Circle: Summarizable {
    var radius = 1.0
    var summary: String {return "Circle with radius \(radius)"}
}

enum Direction: Int, Summarizable {
    case North, East, South, West
    var summary: String {return "Bearing \(90 * self.rawValue)"}
}

let a: [Summarizable] = [Circle(radius: 5), Direction.West]
assert(a[0].summary == "Circle with radius 5.0")
assert(a[1].summary == "Bearing 270")
