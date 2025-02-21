class Parabola {
  public var a:Float = 0.0;
  public var b:Float = 0.0;
  public var c:Float = 0.0;

  public function new(a:Float, ?b:Float=0.0, ?c:Float=0.0) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  public function toString():String {
    return '${a}x^2 + ${b}x + ${c}';
  }
}

class Copy {
  public static function main():Void {
    var equation1:Parabola = new Parabola(1.0, null, -7.0);
    var equation2:Parabola = equation1;
    var equation3:Parabola = Reflect.copy(equation1);
    equation2.b = 4;
    trace(equation1.toString());
    trace(equation2.toString());
    trace(equation3.toString());
  }
}