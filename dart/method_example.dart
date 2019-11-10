import 'dart:math' show pi;

class Circle {
  static num radius = 10;
  static num get area => pi * radius * radius;
  static num get circumference => 2 * pi * radius;
  static void expand(scale) { radius *= scale; }
}

void main() {
  print(Circle.area);
  Circle.expand(2);
  print(Circle.circumference);
}
