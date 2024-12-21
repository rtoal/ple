class DynamicTypes {
  public static function main():Void {
    var collection:Array<Dynamic> = ["Animal", 4, 2.0, 'c', true];
    for (item in collection) trace(item);

    // Please never do this ever!
    var dud:Dynamic = 1;
    trace(dud.id);
  }
}