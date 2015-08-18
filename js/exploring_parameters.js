import assert from 'assert';

let g = 100;          // Outside of f but visible to it
let x = 200;          // Going to be passed to a
let y = [1,2,3];      // Going to be passed to b
let z = [2,3,4];      // Going to be passed to c

function f(a, b, c) {
  assert(g === 100);  // Yes, we can see enclosing scope
  g = 300;            // We can even change vars in enclosing scope
  assert(g === 300);  // See it changed -> 300
  a = 400;            // We can write to the parameter
  assert(x === 200);  // But the argument DID NOT change
  b = 500;            // Change another parameter
  assert.deepEqual(y, [1,2,3]);    // Argument still intact
  c[1] = 600;                      // We CAN change via reference
  assert.deepEqual(z, [2,600,4]);  // See the change!
}

f(x, y, z);
