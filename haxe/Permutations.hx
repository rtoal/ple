class Permutations {
    static function generatePermutations(a: Array<String>, n: Int):Void {
      if (n == 0) {
        haxe.Log.trace(a.join("\t"), null);
      } else {
        for (i in 0...n) {
          generatePermutations(a, n - 1);
          var j:Int = (n % 2 == 0) ? 0 : i;
          var temp:String = a[j];
          a[j] = a[n];
          a[n] = temp;
        }
        generatePermutations(a, n-1);
      }
    }
  
    public static function main():Void {
      if (Sys.args().length < 1) {
        throw "More than 1 argument is required.";
      }
      var words:Array<String> = Sys.args();
      generatePermutations(words, words.length-1);
    }
  }