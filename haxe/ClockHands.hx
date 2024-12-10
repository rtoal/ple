class ClockHands {
  public static function main():Void {
    for (i in 0...11) {
      var t = Math.floor((i + 0.5) * 43200 / 11);
      var h = Math.floor(t / 3600);
      var m = t % 3600;
      var zeroBuffer = function(str) return (str.length <= 1) ? ((str.length == 0) ? "00" : '0${str}') : str;
      haxe.Log.trace('${zeroBuffer('${(h != 0)? h : 12}')}:${zeroBuffer('${Math.floor(m / 60)}')}:${zeroBuffer('${m % 60}')}', null);
    }
  }
}