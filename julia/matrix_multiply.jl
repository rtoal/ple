a = [1 2 3; 4 5 6; 7 8 9]
b = [1 0 0; 0 2 0; 9 9 9]

# Addition has been overloaded to be elementwise
@assert a + b == [2 2 3; 4 7 6; 16 17 18]

# Multiplication, however, is matrix multiplication
@assert a * b == [28 31 27; 58 64 54; 88 97 81]
