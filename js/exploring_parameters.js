import assert from 'assert';

let g = 100;                      // Note declared outside of f
let x = [1,2,3];                  // Will pass this to a
let y = [4,5,6];                  // Will pass this to b

function f(a, b) {
  assert(g === 100);              // We can see enclosing scope
  g = 200;                        // Change var in enclosing scope
  assert(g === 200);              // See it changed
  a = 300;                        // Change a parameter
  assert.deepEqual(x, [1,2,3]);   // But argument still intact!
  b[1] = 400;                     // Change property
  assert.deepEqual(y, [4,400,6]); // See the change!
}

f(x, y);
