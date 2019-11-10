import "dart:math" show pi;

class Circle {
  num x;
  num y;
  num radius;
  String color;
  Circle({this.x: 1, this.y: 1, this.radius: 1, this.color: 'black'});

  num get area => pi * this.radius * this.radius;
  num get circumference => 2 * pi * this.radius;
}

void main() {
  var c = new Circle(x: 1, y: 5);
  print(c.area);
}
