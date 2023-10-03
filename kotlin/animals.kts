abstract class Animal(val name: String) {
  fun speak(): String {
    return "$name says ${sound()}"
  }
  abstract fun sound(): String
}

class Cow(name: String): Animal (name = name) {
    override fun sound(): String {
        return "moooo"
    }
}

class Horse(name: String): Animal (name = name) {
    override fun sound(): String {
        return "neigh"
    }
}

class Sheep(name: String): Animal (name = name) {
    override fun sound(): String {
        return "baaaa"
    }
}

val s = Horse("CJ")
assert(s.speak() == "CJ says neigh")
val c = Cow("Bessie")
assert(c.speak() == "Bessie says moooo")
assert(Sheep("Little Lamb").speak() == "Little Lamb says baaaa")
