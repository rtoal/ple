class Point (val x: Float, val y: Float) {
    companion object C {
        const val ORIGIN = Point(0, 0)
        fun midpoint(p: Point, q: Point) = Point(
            (p.x + q.x) / 2, (p.y + q.y) / 2)
    }

    fun distanceFromOrigin() = distance(ORIGIN)
    fun distance(p: Point) = hypot(x - p.x, y - p.y)
    fun cube(x: Int) = x * x * x
}
 
println(Point.ORIGIN)
println(Point.midpoint(Point(0, 0), Point(1, 1)))
println(Point(1, 1).distanceFromOrigin())
println(Point(1, 1).distance(Point(0, 0)))
