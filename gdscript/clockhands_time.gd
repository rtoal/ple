extends SceneTree

func _init():
	for i in 11:
		var clock = Time.get_time_string_from_unix_time((43200 * i + 21600) / 11)
		print("12" + clock.substr(2) if clock.substr(0, 2) == "00" else clock)
	quit()