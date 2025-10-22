extends SceneTree

func _init():
	# Dynamic Typing
	var x = 4
	var name1 = "Jacob"
	var numbers1 = [1, 3, 2]
	var vector1 = Vector2(1.3, 5.5)

	# Static Typing
	# Use a type hint with a colon and name of the type:
	var y: int = 7
	var name2: String = "Madison"
	var numbers2: Array[int] = [4, 2, 6]
	var vector2: Vector2 = Vector2(1.5,7.7)

	# Or, use type inference by using the := operator and omit the type:
	var z := 9
	var name3 := "Harrison"
	var vector3 := Vector2(7.0, 3.1)

	# Note: Godot will automatically infer the type of the variable 
	# when using the "const" keyword.
	const name4 = "Robinson"

	# Doing this won't cause an error:
	name1 = "Jason"
	# But these will:
	#name2 = "Sarah"
	#name3 = "Jose"
	#name4 = "Philips"

	quit()