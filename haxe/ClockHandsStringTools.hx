using StringTools;

class ClockHandsStringTools {
  public static function main():Void {
    var pad = function(n:Int) return '${n}'.lpad("0", 2);
    for (i in 0...11) {
      var t = Math.floor((43200 * i + 21600) / 11);
      var h = Math.floor(t / 3600);
      var m = Math.floor(t / 60) % 60;
      var s = t % 60;
      haxe.Log.trace('${pad((h == 0) ? 12 : h)}:${pad((m))}:${pad(s)}', null);
    }
  }
}