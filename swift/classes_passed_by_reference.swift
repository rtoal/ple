class Point {
    var x: Int = 0
    var y: Int = 0
}

func move(_ p: Point, left dx: Int, up dy: Int) {
    p.x += dx
    p.y += dy
}

var p = Point()
move(p, left: 10, up: -2)
assert(p.x == 10 && p.y == -2)  // changed
