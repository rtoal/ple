open class Animal(private val name: String) {
    fun speak(): String = "${sound()}, my name is $name"
    open fun sound() = "Hello"
}

class Cow(name: String): Animal(name) {
    override fun sound() = "Moooo"
}

class Sheep(name: String): Animal(name) {
    override fun sound() = "Baaaa"
}

var a: Animal = Cow("Bessie")  // create an instance of class Cow
a = Animal("Stitch")           // create an instance of class Animal
a = Sheep("Little Lamb")       // create an instance of class Sheep
assert(a.speak() == "Baaaa, my name is Little Lamb")
