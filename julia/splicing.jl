y = 10
e = :(x + $(y / 2))     # y/2 evaluated here
@assert e == :(x + 5)
