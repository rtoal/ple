class Quadrilateral {
  public function new() {}
  public function name() {trace("Quadrilateral");}
}
class Rectangle extends Quadrilateral {
  override public function name() {trace("Rectangle");}
}
class Square extends Rectangle {
  override public function name() {trace("Square");}
}

class Casting {
  public static function main():Void {
    // Unsafe Casting
    var x = 3.5;
    var y = cast x;
    $type(x);   // Float
    $type(y);   // Unknown<0>
    Std.parseFloat(y);
    $type(y);   // String

    // Safe Casting
    var shape1:Rectangle = new Rectangle();
    var shape2:Square = new Square();
    var shape3:Square = new Square();
    $type(shape1);
    $type(shape2);
    $type(shape3);
    var shape1 = cast(shape1, Quadrilateral);
    var shape2 = cast(shape2, Quadrilateral);
    var shape3 = cast(shape3, Rectangle);
    $type(shape1);
    $type(shape2);
    $type(shape3);
  }
}