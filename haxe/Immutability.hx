class Immutability {
  public static function main():Void {
    final num = 2;
    final word = "hey!";
    // Error in next lines when uncommmented.
    //num = 4;
    //word = word.toUpperCase();

    final nums = [1, 1, 1, 1, 1];
    // Objects are not necessarily immutable.
    //nums = [];
    nums[2] = 4;
    nums.pop();
  }
}