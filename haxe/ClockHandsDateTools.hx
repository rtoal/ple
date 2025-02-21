using DateTools;

class ClockHandsDateTools {
  public static function main():Void {
    for (i in 0...11){
      var time = Date.fromTime((43200000 * i + 21600000) / 11 + Date.now().getTimezoneOffset() * 60000);
      haxe.Log.trace((DateTools.format(time, "%I:%M:%S")), null);
    }
  }
}