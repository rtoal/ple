import Foundation

struct Vector: CustomStringConvertible {
    let i: Double
    let j: Double

    func magnititude() -> Double {
        return sqrt(i * i + j * j)
    }

    var description: String {
        return "<\(i),\(j)>"
    }
}

func + (left: Vector, right: Vector) -> Vector {
    return Vector(i: left.i + right.i, j: left.j + right.j)
}

func * (left: Vector, right: Vector) -> Double {
    return left.i * right.i + left.j * right.j
}

prefix func - (v: Vector) -> Vector {
    return Vector(i: -v.i, j: -v.j)
}

let u = Vector(i: 3, j: 4)
let v = Vector(i: -5, j: 10)
assert(u.i == 3)
assert(u.j == 4)
assert(u.magnititude() == 5)
assert(String(describing: u + v) == "<-2.0,14.0>")
assert(u * v == 25)
assert(String(describing: -v) == "<5.0,-10.0>")
