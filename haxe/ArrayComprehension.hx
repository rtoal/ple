class ArrayComprehension {
  public static function main():Void {
    var fizzbuzz:Array<Dynamic> = [for (i in 1...1001) if (i%15 == 0) "FizzBuzz" else if (i%3 == 0) "Fizz" else if (i%5 == 0) "Buzz" else i];
    trace(fizzbuzz.join(" "));
  }
}