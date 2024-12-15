using StringTools;
class ClockHandsPadding {
    public static function main():Void {
      for (i in 0...11) {
        var t = Math.floor((i + 0.5) * 43200 / 11);
        var h = Math.floor(t / 3600);
        var m = t % 3600;
        haxe.Log.trace('${'${(h != 0)? h : 12}'.lpad("0", 2)}:${'${Math.floor(m / 60)}'.lpad("0", 2)}:${'${m % 60}'.lpad("0", 2)}', null);
      }
    }
  }