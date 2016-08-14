e1 = parse("x * sqrt(9) - 5")
e2 = :(x * sqrt(9) - 5)
e3 = Expr(:call, :-, Expr(:call, :*, :x, Expr(:call, :sqrt, 9)), 5)

@assert e1 == e2 && e2 == e3 && typeof(e1) == Expr
