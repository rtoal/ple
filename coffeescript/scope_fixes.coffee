[a, b, c] = [1, 2, 3]      # globals

bad = ->
  a = 10                   # clobbers global a

okay = ->
  ((b) -> b = 20)()        # writes to local b

better = ->
  do (c=30) ->             # writes to local c

bad(); okay(); better()
assert = require 'assert'
assert.deepEqual([a,b,c], [10,2,3])
