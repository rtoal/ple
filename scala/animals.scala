abstract class Animal(name: String) {
  def speak = name + " says " + sound
  def sound: String
}

class Cow(name: String) extends Animal(name) {
  override def sound() = "moooo"
}

class Horse(name: String) extends Animal(name) {
  override def sound() = "neigh"
}

class Sheep(name: String) extends Animal(name) {
  override def sound() = "baaaa"
}

var h = new Horse("CJ")
println(h.speak)
var c = new Cow("Bessie")
println(c.speak)
println(new Sheep("Little Lamb").speak)
