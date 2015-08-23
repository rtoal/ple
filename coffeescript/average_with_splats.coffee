average = (a...) ->
  (a.reduce ((x, y) -> x + y), 0) / a.length

assert = require 'assert'
result = average 7.5, -10, 50.5
assert result is 16
assert isNaN average()
