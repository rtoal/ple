struct Point {
    var x: Int
    var y: Int
}

func move(_ p: Point, left dx: Int, up dy: Int) {
    var q = p
    q.x += dx
    q.y += dy
}

var p = Point(x: 4, y: 3)
move(p, left: 10, up: -2)
assert(p.x == 4 && p.y == 3)  // unchanged
