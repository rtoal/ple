macro tenTimesX()
  println("hello");     # executed at parse time
  :(x * 10)             # expression returned at parse time
end

function f()
  x = 2;
  @tenTimesX()          # replaced with x*10 at parse time
end                     # when called, f executes x=2; x*10

@assert f() == 20
@assert f() == 20
@assert f() == 20
@assert f() == 20
