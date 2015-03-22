import 'dart:math' as math;

class Circle {
  static num radius = 10;
  static num get area => math.PI * radius * radius;
  static num get circumference => 2 * math.PI * radius;
  static void expand(scale) { radius *= scale; }
}

void main() {
  print(Circle.area);
  Circle.expand(2);
  print(Circle.circumference);
}
