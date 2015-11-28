[a, b, c] = [0, 1, 2]
(() ->
  a = 100      # Overwrites outer: there's an a out there
  b = 200      # Overwrites outer: there's a b out there
  d = 300)()   # Local, because there's no d out there

assert = require 'assert'
assert.deepStrictEqual([a,b,c], [100,200,2])
assert.throws (-> d), ReferenceError
