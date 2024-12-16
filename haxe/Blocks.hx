class Blocks {
  public static function main():Void {
    {
      var a = 1;
      trace(a);
    }

    // Error if uncommented
    //trace(a);
    var a = 3;

    {
      var a = 5;
      trace(a);
    }
    trace(a);
  }
}