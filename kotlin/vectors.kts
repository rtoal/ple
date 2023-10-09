import kotlin.math.sqrt

class Vector(val i: Double, val j: Double) {

    operator fun get(index: Int): Double {
        return when (index) {
            0 -> i
            1 -> j
            else -> throw IndexOutOfBoundsException("Vector index out of bounds")
        }
    }

    fun magnitude(): Double {
        return sqrt(i * i + j * j)
    }

    operator fun plus(v: Vector): Vector {
        return Vector(i + v.i, j + v.j)
    }

    operator fun times(v: Vector): Double {
        return i * v.i + j * v.j
    }

    override fun toString(): String {
        return "<$i,$j>"
    }
}

val u = Vector(3.0, 4.0)
val v = Vector(-5.0, 10.0)
assert(u.i == 3.0)
assert(u.j == 4.0)
assert(u[0] == 3.0)
assert(u[1] == 4.0)
assert(u.magnitude() == 5.0)
assert((u + v).toString() == "<-2.0,14.0>")
assert(u * v == 25.0)
println("OK")
