extends SceneTree

func sum_of_even_squares(a):
	return a.filter(func (n): return n % 2 == 0).map(func (n): return n ** 2).reduce(func (acc, n): return acc + n, 0)

func _init():
	assert(sum_of_even_squares([]) == 0)
	assert(sum_of_even_squares([1]) == 0)
	assert(sum_of_even_squares([1,2]) == 4)
	assert(sum_of_even_squares([1,2,3]) == 4)
	assert(sum_of_even_squares([1,2,3,4]) == 20)
	assert(sum_of_even_squares([4,6,7,2]) == 56)
	quit()