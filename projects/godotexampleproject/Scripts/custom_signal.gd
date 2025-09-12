extends Sprite2D

signal custom_signal

@export var timer: float = 0.0
var previous = 0.0

func _process(delta: float) -> void:
	timer += Time.get_ticks_usec() - previous
	if timer > 5000000.0:
		timer -= 5000000.0
		print("signal emitted")
		custom_signal.emit()
	previous = Time.get_ticks_usec()
