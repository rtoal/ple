class Circle(
    val radius: Double,
    private var x: Double,
    private var y: Double,
) {
    val area = Math.PI * radius * radius
    val circumference = 2 * Math.PI * radius

    constructor(descriptor: String): this(
        descriptor.split(":").map { it.trim().toDouble() }
    )
    private constructor(a: List<Double>) : this(a[0], a[1], a[2])
    init { println("Circle created!") }

    fun move(dx: Double, dy: Double) {
        x += dx
        y += dy
    }
    override fun toString(): String {
        return "Circle with radius $radius at ($x,$y)"
    }
}

val c = Circle(2.0, 0.0, 0.0)     // use primary constructor
c.move(13.0, 21.0)                // invoke a method
println(c)                        // indirectly calls toString()
val newC = Circle("3.0:1.0:2.0")  // use secondary constructor

assert(c.radius == 2.0)
assert(c.area == 4.0 * Math.PI)
assert(newC.circumference == 6.0 * Math.PI)
