// JavaScript illustration of local variables
var a = 0, b = 1, c = 2;
(() => {
  var a = 100;   // Local, shadows the outer a
  b = 200;       // Forgot var, overwrites outer b!
  var d = 300;   // Local, will not exist after return
})();

const assert = require('assert')
assert.deepStrictEqual([a,b,c], [0, 200, 2])
assert.throws(() => d, ReferenceError)
