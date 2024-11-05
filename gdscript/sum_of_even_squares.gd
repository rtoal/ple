extends SceneTree

func sum_of_even_squares(a):
	var sum = 0
	for x in a.filter(func (x): return x % 2 == 0):
		sum += x ** 2
	return sum

func _init():
	print(sum_of_even_squares([4,6,7,2]))
	quit()