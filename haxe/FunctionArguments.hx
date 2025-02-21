class FunctionArguments {
  static function merge(...words:String):String {
    if (words.length <= 1) return words[0] ?? "";
    var merged:String = words[0];
    for (word in words.toArray().slice(1)) {
      for (i in 0...merged.length+1) {
        if (word.indexOf(merged.substring(i)) == 0) {
          merged += word.substring(merged.substring(i).length);
        }
      }
    }
    return merged;
  }
  
  public static function main():Void {
    trace(merge());
    trace(merge("epoch"));
    trace(merge("epoch", "choice"));
    trace(merge("epoch", "choice", "ice cream"));
    trace(merge("epoch", "choice", "ice cream", "reams"));
    trace(merge("to", "get", "her"));
    trace(merge("luna", "raid", "afraid"));
  }
}