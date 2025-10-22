extends SceneTree

@abstract class Animal:
	var name: String
	func _init(s: String) -> void:
		name = s
	func speak() -> String:
		return "%s says %s" % [self.name, sound()] 
	@abstract func sound() -> String

class Cow extends Animal:
	func sound() -> String:
		return "moooo"

class Horse extends Animal:
	func sound() -> String:
		return "neigh"

class Sheep extends Animal:
	func sound() -> String:
		return "baaaa"

func _init():
	var h := Horse.new("CJ")
	assert(h.speak() == "CJ says neigh")
	var c = Cow.new("Bessie")
	assert(c.speak() == "Bessie says moooo")
	assert(Sheep.new("Little Lamb").speak() == "Little Lamb says baaaa")
	quit()