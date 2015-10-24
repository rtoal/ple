let assert = require('assert');

function f(x, y) {return [x, y]}
function g(x, ...y) {return [x, y]}

assert.deepEqual(f(1), [1, undefined]);     // too few arguments
assert.deepEqual(f(1, 2, 3), [1, 2]);       // too many arguments
assert.deepEqual(g(1, 2, 3), [1, [2, 3]]);  // later arguments packed
var args = [1, 2]
assert.deepEqual(f(...args), [1, 2]);       // args unpacked to x and y
