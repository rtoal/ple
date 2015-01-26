var assert = require('assert');

// We don't have to name functions to call them
var y = (function (x) {return x + 5})(10);
assert(y === 15);

// We can assign function values to variables
var square = function (x) {return x * x};
var odd = function (x) {return Math.abs(x % 2) === 1};
var lessThanTen = function (x) {return x < 10};
var twice = function (f, x) {return f(f(x))};

// We can pass function values by name, or anonymously
assert(twice(square, -3) === 81);
assert(twice(function (x) {return x + 1}, 5) === 7);

// We can create and return new functions on the fly
function compose(f, g) {
  return function (x) {return f(g(x))};
}
var isOddWhenSquared = compose(odd, square);
assert(isOddWhenSquared(7) === true);
assert(isOddWhenSquared(0) === false);

// Several built-in array functions accept functions
var a = [9, 7, 4, -1, 8];
assert(a.every(odd) === false);
assert(a.some(odd) === true);
assert(a.every(lessThanTen) === true);
assert.deepEqual(a.filter(odd), [9, 7, -1]);
assert.deepEqual(a.map(square), [81, 49, 16, 1, 64]);
