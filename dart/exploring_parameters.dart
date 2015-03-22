var g = 100;
var x = 200;
var y = [1, 2, 3];
var z = [2, 3, 4];

void f(num a, List<num> b, List<num> c) {
  print(g);
  g = 300;
  print(g);
  a = 400;
  print(x);
  b = 500;
  print(y);
  c[1] = 600;
  print(z);
}

void main() {
  f(x, y, z);
}
