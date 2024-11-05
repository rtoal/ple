extends SceneTree

func triple():
	for c in range(1, 41):
		for b in range(1, c):
			for a in range(1, b):
				if a * a + b * b == c * c:
					print("%d, %d, %d" % [a, b, c])

func _init():
	triple()
	quit()