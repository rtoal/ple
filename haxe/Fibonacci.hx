class Fibonacci {
  static function fibonacci(n:Int):Int {
    if (n <= 1) {
      return n;
    }
    return fibonacci(n - 2) + fibonacci(n - 1);
  }

  public static function main():Void {
    for (n in 0...15) {
      trace(n, fibonacci(n));
    }
  }
}