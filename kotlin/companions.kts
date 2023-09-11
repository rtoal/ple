class MyClass {
    companion object {
        const val PI = 3.14159
    }
    fun square(x: Int) = x * x
    fun cube(x: Int) = x * x * x
}
 

val pi = MyClass.PI
val square = MyClass.square(5)
