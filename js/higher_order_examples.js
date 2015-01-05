var assert = require('assert');

// We can use function declarations...
function square(x) {return x * x}
function odd(x) {return Math.abs(x % 2) === 1}

// ...or assign function expressions to variables
var lessThanTen = function (x) {return x < 10}
var twice = function (f, x) {return f(f(x))}

assert(twice(square, -3) === 81);
assert(twice(function (x) {return x + 1}, 5) === 7);

var a = [9, 7, 4, -1, 8];
assert(a.every(odd) === false);
assert(a.some(odd) === true);
assert(a.every(lessThanTen) === true);
assert.deepEqual(a.filter(odd), [9, 7, -1]);
assert.deepEqual(a.map(square), [81, 49, 16, 1, 64]);

console.log('Everything is fine');
