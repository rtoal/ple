# This script is attactched to the CanvasLayer object.
extends CanvasLayer

# This is a signal receiver where if you click on a button,
# this function will play out.
func _on_hello_button_pressed() -> void:
	print("Hello!")

func _on_color_slider_value_changed(red: float) -> void:
	# Below, get_node("ColorSlider") is the same as $ColorSlider.
	$ColorSlider.modulate = Color(red / 100, 0, 1)

func _on_rainbow_slider_value_changed(h: float) -> void:
	# Below, get_node("RainbowSlider") is the same as $RainbowSlider.
	$RainbowSlider.modulate = Color.from_hsv(h / 100, 1, 1)
