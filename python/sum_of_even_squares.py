def sum_of_even_squares(a):
    return sum(x*x for x in a if x % 2 == 0)

assert sum_of_even_squares([]) == 0
assert sum_of_even_squares([1]) == 0
assert sum_of_even_squares([1,2]) == 4
assert sum_of_even_squares([1,2,3]) == 4
assert sum_of_even_squares([1,2,3,4]) == 20
