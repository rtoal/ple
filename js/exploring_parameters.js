const assert = require('assert');

const x = [1,2,3];
const y = [4,5,6];

function f(a, b) {
  a = 300;                              // Change *parameter*
  assert.deepStrictEqual(x, [1,2,3]);   // Argument still intact!
  b[1] = 400;                           // Change *property*
  assert.deepStrictEqual(y, [4,400,6]); // See the change!
}

f(x, y);
