var g = 100;          // Global
var x = 200;          // Going to be passed to x
var y = [1,2,3];      // Going to be passed to y
var z = [2,3,4];      // Going to be passed to z

function f(a, b, c) {
  console.log(g);     // Yep, we can see globals
  g = 200;            // We can even change globals
  console.log(g);     // See it changed
  a = 500;            // We can write to the parameter
  console.log(x);     // But the argument DID NOT change
  b = 300;            // Changing a parameter again
  console.log(y);     // Argument still intact
  c[1] = 400;         // But we CAN change through a reference!
  console.log(z);     // See the change!
}

f(x, y, z);
