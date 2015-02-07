var a = 0, b = 1, c = 2;
(function () {
  var a = 100;   // Local declaration, global a is safe!
  b = 200;       // Forgot var, overwrites global b
  d = 300;       // Forgot var, creates global d (oh my!)
  var e = 400;   // Local, will not exist after return
}());
console.log('%d %d %d %d', a, b, c, d);
try {
  console.log(e);
} catch (error) {
  console.log('e is not defined out here');
}