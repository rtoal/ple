import Foundation

struct Circle {
    var radius: Double                             // stored property
    var area: Double {                             // computed property
        get {return Double.pi * radius * radius}
        set(a) {radius = sqrt(a/Double.pi)}
    }
}

var c = Circle(radius: 10)
assert(c.radius == 10 && c.area == 100*Double.pi)  // invokes get
c.area = 16*Double.pi                              // invokes set
assert(c.radius == 4 && c.area == 16*Double.pi)
