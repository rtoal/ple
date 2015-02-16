// We don't have to name functions to call them
var y = (function (x) {return x + 5})(10);
console.log(y);                       // 15

// We can assign function values to variables
var square = function (x) {return x * x};
var odd = function (x) {return Math.abs(x % 2) === 1};
var lessThanTen = function (x) {return x < 10};
var twice = function (f, x) {return f(f(x))};

// We can pass function values by name, or anonymously
console.log(twice(square, -3));                     // 81
console.log(twice(function (x) {return x + 1}, 5)); // 7

// We can create and return new functions on the fly
function compose(f, g) {
  return function (x) {return f(g(x))};
}
var isOddWhenSquared = compose(odd, square);
console.log(isOddWhenSquared(7));     // true
console.log(isOddWhenSquared(0));     // false

// Several built-in array functions accept functions
var a = [9, 7, 4, -1, 8];
console.log(a.every(odd));            // false
console.log(a.some(odd));             // true
console.log(a.every(lessThanTen));    // true
console.log(a.filter(odd));           // [9, 7, -1]
console.log(a.map(square));           // [81, 49, 16, 1, 64]
