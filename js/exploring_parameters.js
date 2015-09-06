import assert from 'assert';

let x = [1,2,3];                  // Will pass this to a
let y = [4,5,6];                  // Will pass this to b

function f(a, b) {
  a = 300;                        // Change a parameter
  assert.deepEqual(x, [1,2,3]);   // But argument still intact!
  b[1] = 400;                     // Change property
  assert.deepEqual(y, [4,400,6]); // See the change!
}

f(x, y);
