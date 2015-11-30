macro tenTimesX()
  println("hello");     # executed at compile time
  :(x * 10)             # expression returned at compile time
end

function f()
  x = 2;
  @tenTimesX()          # replaced with x*10 at compile time
end                     # when called, f executes x=2; x*10

@assert f() == 20
@assert f() == 20
@assert f() == 20
@assert f() == 20
