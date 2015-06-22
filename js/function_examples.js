// We don't have to name functions to call them
console.log((x => x + 5)(10));        // 15

// We can assign function values to variables
let square = x => x * x;
let odd = x => Math.abs(x % 2) === 1;
let lessThanTen = x => x < 10;
let twice = (f, x) => f(f(x));

// We can pass function values
console.log(twice(square, -3));       // 81
console.log(twice(x => x + 1, 5));    // 7

// We can create and return new functions on the fly
function compose(f, g) {
  return x => f(g(x));
}
let isOddWhenSquared = compose(odd, square);
console.log(isOddWhenSquared(7));     // true
console.log(isOddWhenSquared(0));     // false

// Several built-in array functions accept functions
let a = [9, 7, 4, -1, 8];
console.log(a.every(odd));            // false
console.log(a.some(odd));             // true
console.log(a.every(lessThanTen));    // true
console.log(a.filter(odd));           // [9, 7, -1]
console.log(a.map(square));           // [81, 49, 16, 1, 64]
