import Foundation

struct Circle {
    var radius = 1.0
    var area: Double {
        get {return M_PI * radius * radius}
        set(a) {radius = sqrt(a/M_PI)}
    }
}

var c = Circle(radius: 10)
assert(c.radius == 10 && c.area == 100*M_PI)
c.area = 16*M_PI
assert(c.radius == 4 && c.area == 16*M_PI)
