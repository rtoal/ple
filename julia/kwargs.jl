function f(x; y=1, z=2)
  x^2 + 2y + z
end

@assert f(4) == 20
@assert f(3, z=10) == 21
@assert f(3, z=1, y=2) == 14