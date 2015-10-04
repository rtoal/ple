# Three ways to create unevauated expressions
e1 = parse("x * sqrt(9) - 5")
e2 = :(x * sqrt(9) - 5)
e3 = Expr(:call, :-, Expr(:call, :*, :x, Expr(:call, :sqrt, 9)), 5)

# They're all equivalent
@assert e1 == e2 && e2 == e3

# Each has type Expr
@assert typeof(e1) == Expr

# Delayed evaluation
x = 2
@assert eval(e1) == 1.0
