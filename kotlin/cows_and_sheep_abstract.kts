abstract class Animal(private val name: String) {
    fun speak(): String = "${sound()}, my name is $name"
    abstract fun sound(): String
}

class Cow(name: String): Animal(name) {
    override fun sound() = "Moooo"
}

class Sheep(name: String): Animal(name) {
    override fun sound() = "Baaaa"
}

var a: Animal = Cow("Bessie")  // create an instance of class Cow
a = Sheep("Little Lamb")       // create an instance of class Sheep
// a = Animal("Stitch")        // does not compile: Animal is abstract
assert(a.speak() == "Baaaa, my name is Little Lamb")
