trait Animal(name: String):
  def speak = s"$name says $sound"
  def sound: String

class Cow(name: String) extends Animal(name):
  def sound = "moooo"

class Horse(name: String) extends Animal(name):
  def sound = "neigh"

class Sheep(name: String) extends Animal(name):
  def sound = "baaaa"

@main def animals() =
  var h = new Horse("CJ")
  assert(h.speak == "CJ says neigh")
  var c = new Cow("Bessie")
  assert(c.speak == "Bessie says moooo")
  assert(new Sheep("Little Lamb").speak == "Little Lamb says baaaa")
