medianOfThree = (x, y, z) ->
  x + y + z - (Math.max x, y, z) - Math.min x, y, z

assert = require 'assert'
numbers = [80, 20, 55]
middle = medianOfThree numbers...
assert middle is 55
