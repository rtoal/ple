class ConditionalCompilation {
  static function productOfOdds(nums:Array<Int>):Int {
    var product:Int = 1;
    for (num in nums) {
      product *= ((num % 2 == 1) ? num : 1);
    }
    return product;
  }

  public static function main():Void {
    #if !debug
    trace("We are not debugging!");
    #elseif (debug_type == "pos")
    trace(productOfOdds([1, 2, 3, 4, 5, 6]));
    #elseif (debug_type == "neg")
    trace(productOfOdds([-1, -2, -3, -4, -5, -6]));
    #elseif (debug_type == "mixed")
    trace(productOfOdds([-3, -2, -1, 0, 1, 2, 3]));
    #else
    trace("debug_type needs to be pos, neg, or mixed");
    #end
  }
}