abstract class Animal(val name: String) {
    fun speak() = "$name says ${sound()}"
    abstract fun sound(): String
}

class Cow(name: String): Animal(name) {
    override fun sound() = "moooo"
}

class Horse(name: String): Animal(name) {
    override fun sound() = "neigh"
}

class Sheep(name: String): Animal(name) {
    override fun sound() = "baaaa"
}

val h = Horse("CJ")
assert(h.speak() == "CJ says neigh")
val c = Cow("Bessie")
assert(c.speak() == "Bessie says moooo")
assert(Sheep("Little Lamb").speak() == "Little Lamb says baaaa")
