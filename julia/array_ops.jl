using LinearAlgebra

a = [2 -1 0; 1 1 1; 0 1 2]
b = [2 1 0; -1 1 -1; 0 -1 2]
u = [1, 2, 3]
v = [1, 0, 0]

@assert tr(a) == 5
@assert det(a) == 4.0
@assert cross(u, v) == [0, 3, -2]
@assert UnitUpperTriangular(a) == [1 -1 0; 0 1 1; 0 0 1]
@assert UpperHessenberg(a) == [2 -1 0; 1 1 1; 0 1 2]
@assert dot(a, b) == 5

rotate!(u, v, 3, 8)             # ! indicates mutation of u and v
reflect!(v, u, 1, 10)           # ! indicates mutation of u and v
@assert u == [-61, -166, -249]
@assert v == [105, 44, 66]
