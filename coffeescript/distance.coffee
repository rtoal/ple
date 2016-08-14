distance = (p, q) ->
  dx = q.x - p.x
  dy = q.y - p.y
  Math.sqrt(dx * dx + dy * dy)

assert = require 'assert'
assert.equal 5,  distance {x:3, y:10}, {x: -1, y:13}
assert.equal 5,  distance {x:3, y:10}, {x: -1, y:7}
assert.equal 5,  distance {x:3, y:10}, {x: 7, y:7}
assert.equal 5,  distance {x:3, y:10}, {x: 7, y:7}
