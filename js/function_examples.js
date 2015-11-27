let assert = require('assert');

// Function values can use `=>` or `function`
let square = x => x * x;
let odd = x => Math.abs(x % 2) === 1;
let lessThanTen = function (x) {return x < 10};
let twice = (f, x) => f(f(x));

// An anonymous function call
assert((x => x + 5)(10) === 15);

// We can pass function values to other functions
assert(twice(square, -3) === 81);
assert(twice(x => x + 1, 5) === 7);

// We can create and return new functions on the fly
function compose(f, g) {
  return x => f(g(x));
}
let isOddWhenSquared = compose(odd, square);
assert(isOddWhenSquared(7));
assert(!isOddWhenSquared(0));

// Array functions often take the place of loops
let a = [9, 7, 4, -1, 8];
assert(!a.every(odd));
assert(a.some(odd));
assert(a.every(lessThanTen));
assert.deepStrictEqual(a.filter(odd), [9, 7, -1]);
assert.deepStrictEqual(a.map(square), [81, 49, 16, 1, 64]);
