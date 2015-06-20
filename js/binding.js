function second(f) {
  let name = 'new';
  f();
}

function first() {
  let name = 'old';
  let printName = function () {console.log(name)};
  second(printName);
}

first();
