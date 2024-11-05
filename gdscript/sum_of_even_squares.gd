func sum_of_even_squares(a):
	var sum = 0
	for x in a.filter(func (x): return x % 2 == 0):
		sum += x + x
	return sum