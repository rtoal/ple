function second(f) {
  const name = 'new';
  f();
}

function first() {
  const name = 'old';
  const printName = () => console.log(name);
  second(printName);
}

first();
