class ClockHands {
  public static function main():Void {
    for (i in 0...11) {
      var t = Math.floor((i + 0.5) * 43200 / 11);
      var h = Math.floor(t / 3600);
      var m = t % 3600;
      var pad = function(n) return (n < 10) ? '0${n}' : '${n}';
      haxe.Log.trace('${pad((h != 0) ? h : 12)}:${pad(Math.floor(m / 60))}:${pad(m % 60)}', null);
    }
  }
}