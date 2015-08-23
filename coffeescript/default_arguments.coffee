f = (x, y=1, z=0) -> x * y + z

assert = require 'assert'
assert f(2) is 2           # 2*1+0 = 2
assert f(3, 5) is 15       # 3*5+0 = 15
assert f(2, 8, 1) is 17    # 2*8+1 = 17
