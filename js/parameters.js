const assert = require('assert');

function f(x, y) {return [x, y]}
function g(x, ...y) {return [x, y]}

assert.deepStrictEqual(f(1), [1, undefined]);     // too few args
assert.deepStrictEqual(f(1, 2, 3), [1, 2]);       // too many args
assert.deepStrictEqual(g(1, 2, 3), [1, [2, 3]]);  // args packed
const args = [1, 2]
assert.deepStrictEqual(f(...args), [1, 2]);       // args unpacked
