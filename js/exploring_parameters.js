var g = 100;          // Outside of f but visible to it
var x = 200;          // Going to be passed to a
var y = [1,2,3];      // Going to be passed to b
var z = [2,3,4];      // Going to be passed to c

function f(a, b, c) {
  console.log(g);     // Yes, we can see enclosing scope -> 100
  g = 300;            // We can even change vars in enclosing scope
  console.log(g);     // See it changed -> 300
  a = 400;            // We can write to the parameter
  console.log(x);     // But the argument DID NOT change -> 200
  b = 500;            // Changing another parameter
  console.log(y);     // Argument still intact -> [1,2,3]
  c[1] = 600;         // But we CAN change through a reference!
  console.log(z);     // See the change! -> [2,600,4]
}

f(x, y, z);
