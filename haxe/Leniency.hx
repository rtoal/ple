class Leniency {
  public static function main():Void {
    var student:Dynamic = null;
    trace(student.id);
    trace(student.length);

    var x = [];
    trace(x[0]);
    trace(x[-1]);

    var y = new haxe.ds.Vector(0);
    trace(y[0]);
    trace(y[-1]);
  }
}