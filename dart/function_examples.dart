import 'dart:math' as math;
void main() {
  // We don't have to name functions to call them
  var y = ((x) { return x + 5; })(10);
  print(y);                       // 15

  // We can assign function values to variables
  var square = (x) { return x * x; };
  // Single line functions that return something can be expressed by a shorter
  // syntax. 
  var odd = (x) => (x % 2).abs() == 1;
  var lessThanTen = (x) => x < 10;
  var twice = (f, x) => f(f(x));

  // We can pass function values by name, or anonymously
  print(twice(square, -3));                     // 81
  print(twice((x) => x + 1, 5)); // 7

  // We can create and return new functions on the fly
  compose(f, g) {
    return (x) {
      return f(g(x));
    };
  }
  var isOddWhenSquared = compose(odd, square);
  print(isOddWhenSquared(7));     // true
  print(isOddWhenSquared(0));     // false

  // Several built-in list functions accept functions
  var a = [9, 7, 4, -1, 8];
  print(a.every(odd));            // false
  print(a.any(odd));              // true
  print(a.every(lessThanTen));    // true
  print(a.where(odd));            // [9, 7, -1]
  print(a.map(square));           // [81, 49, 16, 1, 64]

  // Multiple methods can be cascaded on a single object
  a
    ..remove(3)
    ..[2] = 5
    ..retainWhere(odd)
    ..sort();
  print(a);                      // [-1, 5, 7, 9]                     
  
}
