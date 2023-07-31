abstract class Shape {
    abstract fun area(): Double
}

class Square(private val side: Double) : Shape() {
    override fun area(): Double = side * side
}

class Circle(private val radius: Double) : Shape() {
    override fun area(): Double = Math.PI * radius * radius
}

val shape = arrayOf(Square(3.0), Circle(5.0)).random()
println(shape.area())
