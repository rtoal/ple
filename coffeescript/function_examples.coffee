square = (x) -> x ** 2
squares = [1..5].map(square)  # pass function by name
result = ((x) -> x * 5) 16    # call anonymous function

assert = require 'assert'
assert.deepStrictEqual(squares, [1, 4, 9, 16, 25])
assert result is 80
