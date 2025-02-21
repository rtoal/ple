class ClockHands {
  public static function main():Void {
    var pad = function(n) return (n < 10) ? '0${n}' : '${n}';
    for (i in 0...11) {
      var t = Math.floor((i + 0.5) * 43200 / 11);
      var h = Math.floor(t / 3600);
      var m = Math.floor(t / 60) % 60;
      var s = t % 60;
      haxe.Log.trace('${pad((h == 0) ? 12 : h)}:${pad(Math.floor(m))}:${pad(s)}', null);
    }
  }
}