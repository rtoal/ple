void second(f) {
  var name = 'new';
  f();
}

void first() {
  var name = 'old';
  var printName = () => print(name);
  second(printName);
}

void main() {
  first();
}
