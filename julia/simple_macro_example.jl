macro addTwoToX()
  println("hello");
  :(x += 2)
end

function f()
  x = 2;
  @addTwoToX()
end

@assert f() == 4
@assert f() == 4
@assert f() == 4
@assert f() == 4
