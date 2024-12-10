class OptionalArgs {
  static function describe(name : String, ?age : Int, ?job : String = "unenemployed") {
    haxe.Log.trace('$name is age ${age ?? 25} who is $job.');
  }

  public static function main():Void {
    describe("Jack");
    describe("Charlie", 53);
    describe("Pam", "a cook");
    describe("Jacqueline", 32, "a teacher");
    describe("Alex", 22, null);     // Null is colalessed into a string from the default parameter!
  }
}