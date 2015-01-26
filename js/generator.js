var nextSquare = (function () {
  var previous = -1;
  return function () {
    previous++;
    return previous * previous;
  }
}());

console.log(nextSquare());    // prints 0
console.log(nextSquare());    // prints 1
console.log(nextSquare());    // prints 4
