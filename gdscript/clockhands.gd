extends SceneTree

func _init():
	for i in 11:
		var t = (i + 0.5) * 43200 / 11 as int
		var h = t / 3600
		var m = t % 3600
		print("%02d:%02d:%02d" % [h if h else 12, m / 60, m % 60])
	quit()
	