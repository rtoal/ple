y = 10
e = :(x + $(y / 2))
@assert e == :(x + 5)
