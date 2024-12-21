class LocalStaticVariables {
  static function factorialGenerator():Int {
    static var product:Int = 1;
    static var factor:Int = 1;
    product *= factor;
    factor++;
    return product;
  }

  public static function main():Void {
    for (_ in 0...10) trace(factorialGenerator());
  }
}