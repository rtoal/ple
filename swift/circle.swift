import Foundation

struct Circle {
    var radius = 1.0
    var area: Double {
        get {return Double.pi * radius * radius}
        set(a) {radius = sqrt(a/Double.pi)}
    }
}

var c = Circle(radius: 10)
assert(c.radius == 10 && c.area == 100*Double.pi)  // get property
c.area = 16*Double.pi                              // set property
assert(c.radius == 4 && c.area == 16*Double.pi)
