f(x, y...) = y
@assert f(1, 2, 3) == (2, 3)

g(x; y...) = y
@assert g(1, a=2, b=5) == [(:a,2),(:b,5)]