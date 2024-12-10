import haxe.macro.Type;

class Monomorph {
  public static function main():Void {
    var x = null;
    trace('x is $x, which is a ${Type.typeof(x)}');
    // x is now statically typed during runtime!
    // Will throw error if uncommented.
    //x = 0; 
    x = "what";
    trace('x is $x, which is a ${Type.typeof(x)}');
    var y = null;
    y = 24;
    trace('y is $y, which is a ${Type.typeof(y)}');
    // y is now statically typed during runtime!
    // Will throw error if uncommented.
    //y = "hello"; 
    var y = "hello";
    trace('y is $y, which is a ${Type.typeof(y)}');
    var z = [];
    trace('z is $z, which is a ${Type.typeof(z)}');
    z.push(4);
    trace('z is $z, which is a ${Type.typeof(z)}');
    // y is now statically typed during runtime!
    // Will throw error if uncommented.
    //z.push("world");
    z.pop();
    trace('z is $z, which is a ${Type.typeof(z)}');
  }
}