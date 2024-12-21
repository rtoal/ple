class Inline {
  public static function main():Void {
    inline function quadratic(a:Int, b:Int , c:Int):Array<Float> {
      return [(-b + Math.sqrt(b * b - 4 * a * c)) / (2 * a), (-b - Math.sqrt(b * b - 4 * a * c)) / (2 * a)];
    }

    var a:Int = 3;
    var b:Int = 5;
    var c:Int = -9;
    trace(quadratic(a, b, c));
  }
}