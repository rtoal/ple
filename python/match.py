def describe(e):
    match e:
        case 2 | 3 | 5 | 7 | 11:
            return "Small prime"
        case n if n % 5 == 0:
            return "Multiple of 5"
        case (_, x, _):
            return f"A three-tuple with {x} in the middle"
        case {'id': y}:
            # Matches any dictionary that has an id key, binds value to y
            return f"Your identifier is {y}"
        case _:
            return "What?"

assert describe(5) == "Small prime"
assert describe(15) == "Multiple of 5"
assert describe((1, 2, 3)) == "A three-tuple with 2 in the middle"
assert describe({"data": 2, "id": "x"}) == "Your identifier is x"
assert describe("Mu") == "What?"
