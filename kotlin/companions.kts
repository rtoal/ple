import kotlin.math.hypot
import kotlin.math.sqrt

data class Point (val x: Double, val y: Double) {
    companion object {
        val ORIGIN = Point(0.0, 0.0)
        fun midpoint(p: Point, q: Point) = Point(
            (p.x + q.x) / 2.0, (p.y + q.y) / 2.0)
    }
    fun distanceFromOrigin() = ORIGIN distanceTo this
    fun mirror() = Point(-x, -y)
    infix fun distanceTo(p: Point) = hypot(x - p.x, y - p.y)
}

val oneOne = Point(1.0, 1.0)
val halfHalf = Point(0.5, 0.5)
assert(Point.midpoint(Point.ORIGIN, oneOne) == halfHalf)
assert(Point(4.0, -3.0).distanceFromOrigin() == 5.0)
assert(Point(1.0, 1.0) distanceTo Point(0.0, 0.0) == sqrt(2.0))
assert(oneOne.mirror() == Point(-1.0, -1.0))
