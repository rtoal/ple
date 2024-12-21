using DateTools;
class ClockHandsDateTools {
  public static function main():Void {
    for (i in 0...11){
      haxe.Log.trace((DateTools.format(Date.fromTime((i + 0.5) * 43200000 / 11 + 3600000 * 8), "%I:%M:%S")), null);
    }
  }
}