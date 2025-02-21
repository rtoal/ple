extends SceneTree

var Animal = load("animals/animal.gd")
var Cow = load("animals/cow.gd")

func _init():
	var a = Cow.new("Andy")
	quit()