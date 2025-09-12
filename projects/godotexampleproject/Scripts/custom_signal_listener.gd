extends Sprite2D

# Feel free to readjust this variable on the editor UI! This below is the
# default value.
@export var TIMER_SET = 1000000.0
var timer: float = 0.0
var previous = 0.0

func _process(delta: float) -> void:
	if timer > 0.0:
		timer -= Time.get_ticks_usec() - previous
	elif timer <= 0.0:
		set_frame(0)
	previous = Time.get_ticks_usec()

func _on_icon_custom_signal() -> void:
	print("signal received")
	timer = TIMER_SET
	set_frame(1)
