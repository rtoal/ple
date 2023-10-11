a = [1 2 3; 4 5 6; 7 8 9]
b = [1 0 0; 0 2 0; 9 9 9]

@assert iseven.(a) == [
    false true false; true false true; false true false]
successor(n) = n + 1
@assert successor.(a) == [2 3 4; 5 6 7; 8 9 10]

@assert a .+ b == [2 2 3; 4 7 6; 16 17 18]
@assert a .* b == [1 0 0; 0 10 0; 63 72 81]
@assert a .^ b == [1 1 1; 1 25 1; 40353607 134217728 387420489]
@assert a .* 3 == [3 6 9; 12 15 18; 21 24 27]
@assert a .- 1 == [0 1 2; 3 4 5; 6 7 8]
@assert a ./ 2 == [0.5 1.0 1.5; 2.0 2.5 3.0; 3.5 4.0 4.5]
@assert a .^ 2 == [1 4 9; 16 25 36; 49 64 81]
@assert 1 .- b == [0 1 1; 1 -1 1; -8 -8 -8]

@assert 3 .* a .^ 2 .+ successor.(a) == [
    5 15 31; 53 81 115; 155 201 253]
