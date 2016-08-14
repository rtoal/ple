assert = require 'assert'
assert 4.toFixed(2) is '4.00'
assert true.toString() is 'true'
assert 'abcde'.length is 5
assert [5,3,9,4,6].indexOf(3) is 1
assert.throws((-> null.toString()), TypeError)
assert.throws((-> undefined.toString()), TypeError)
