extends SceneTree

func fibonacci(n):
	if n == 0:
		return 0
	elif n == 1:
		return 1
	return fibonacci(n - 1) + fibonacci(n - 2)

func _init():
	assert(fibonacci(0) == 0)
	assert(fibonacci(1) == 1)
	assert(fibonacci(2) == 1)
	assert(fibonacci(3) == 2)
	assert(fibonacci(4) == 3)
	assert(fibonacci(5) == 5)
	assert(fibonacci(6) == 8)
	assert(fibonacci(7) == 13)
	assert(fibonacci(8) == 21)
	assert(fibonacci(20) == 6765)
	quit()

