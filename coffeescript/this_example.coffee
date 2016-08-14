circle =
  radius: 10,
  area: -> Math.PI * @radius * @radius
  circumference: -> 2 * Math.PI * @radius

assert = require 'assert'
assert circle.area() is 100 * Math.PI
assert circle.circumference() is 20 * Math.PI
