using Lambda;

// Assertion tests were not included in Haxe or its standard library.
class Assert {
  public static function expect(expr:Bool):Void {
    if (!expr) throw "Assertion test failed";
  }
}

class SumOfEvenSquares {
  public static function sumOfEvenSquares(nums:Array<Int>):Int {
    return nums.filter(x -> x % 2 == 0).fold((acc, curr) -> acc * acc + curr, 0);
  }

  public static function main():Void {
    Assert.expect(sumOfEvenSquares([]) == 0);
    Assert.expect(sumOfEvenSquares([1]) == 0);
    Assert.expect(sumOfEvenSquares([1,2]) == 4);
    Assert.expect(sumOfEvenSquares([1,2,3]) == 4);
    Assert.expect(sumOfEvenSquares([1,2,3,4]) == 20);
  }
}