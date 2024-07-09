open class Animal(private val name: String) {
    fun speak(): String = "${sound()}, my name is $name"
    open fun sound() = "Hello"
}

class Cow(name: String): Animal(name) {
    override fun sound() = "moooo"
}

class Sheep(name: String): Animal(name) {
    override fun sound() = "baaaa"
}

var a: Animal = Cow("Bessie")
a = Animal("Stitch")
a = Sheep("Little Lamb")
assert(a.speak() == "baaaa, my name is Little Lamb")
