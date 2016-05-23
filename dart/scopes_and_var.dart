void main() {
  var a = 0, b = 1, c = 2;
  (() {
    var a = 100;   // Local declaration, global a is safe!
    b = 200;       // Unlike javascript, dart won't overwrite global variables - this is a runtime error
    var e = 400;   // Local, will not exist after return
  }());
  print("$a $b $c");
  try {
    print(e);
  } catch (error) {
    print('e is not defined out here');
  }
}
