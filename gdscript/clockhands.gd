extends SceneTree

func _init():
	for i in 11:
		var t = (43200 * i + 21600) / 11
		var h = t / 3600
		var m = t / 60 % 60
		var s = t % 60
		print("%02d:%02d:%02d" % [h if h else 12, m, s])
	quit()