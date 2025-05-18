extends SceneTree

func _init():
	$AnimatedSprite2D.play() # Syntactic Sugar
	get_node("AnimatedSprite2D").stop()	# Desugared
	exit()