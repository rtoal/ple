struct Point {
    var x: Int
    var y: Int
}

func move(var p: Point, left dx: Int, up dy: Int) {
    p.x += dx
    p.y += dy
}

var p = Point(x: 4, y: 3)
move(p, left: 10, up: -2)
assert(p.x == 4 && p.y == 3)  // unchanged
