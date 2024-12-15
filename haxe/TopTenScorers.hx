using StringTools;
class TopTenScorers {
  public static function formatFloat(num:Float):String {
    var floatStr = '${num}';
    if (Math.round(num) == num) {
      floatStr += ".00";
    } else if (floatStr.substr(floatStr.indexOf(".")).length == 2) {
      floatStr += "0";
    }
    return floatStr;
  }

  public static function main():Void {
    var player:Array<String>;
    var players:Array<Dynamic> = [];
    try {
      while (true) {
        player = Sys.stdin().readLine().split(",");
        var team = player[0];
        var name = player[1];
        var games = Std.parseFloat(player[2]);
        var points = Std.parseFloat(player[3]);
        if (games >= 15) players.push([name, team, Math.round(points / games * 100) / 100]);
      }
    }
    catch (e:haxe.io.Eof) {}
    players.sort((a, b) -> b[2] * 100 - a[2] * 100); // Multiply by 100 to avoid floating point errors.
    for (i in 0...10) haxe.Log.trace(
      '${'${players[i][0]}'.rpad(" ", 22)}' +
      '${'${players[i][1]}'.rpad(" ", 4)}' +
      '${formatFloat(players[i][2]).lpad(" ", 8)}'
      , 
    null);
  }
}