import kotlin.math.hypot

data class Point (val x: Double, val y: Double) {
    companion object {
        val ORIGIN = Point(0.0, 0.0)
        fun midpoint(p: Point, q: Point) = Point(
            (p.x + q.x) / 2.0, (p.y + q.y) / 2.0)
    }
    fun distanceFromOrigin() = distance(ORIGIN)
    fun distance(p: Point) = hypot(x - p.x, y - p.y)
}
 
println(Point.midpoint(Point.ORIGIN, Point(1.0, 1.0)))
println(Point(1.0, 1.0).distanceFromOrigin())
println(Point(1.0, 1.0).distance(Point(0.0, 0.0)))
