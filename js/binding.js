function second(f) {
  var name = 'new';
  f();
}

function first() {
  var name = 'old';
  var printName = function () {console.log(name)};
  second(printName);
}

first();
