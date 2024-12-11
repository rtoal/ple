class WordCount {  
  public static function main():Void {
    var words:Map<String, Int> = [];
    for (word in ~/[^\w']/g.split(Sys.stdin().readAll().toString().toLowerCase()).filter(str -> str.length != 0)) {
      if (words.exists(word)) words[word] += 1;
      else words[word] = 1;
    }
    var sortedWords:Array<String> = [for (word in words.keys()) word];
    sortedWords.sort(Reflect.compare);
    for (word in sortedWords) {
      haxe.Log.trace('$word ${words[word]}', null);
    }
  }
}