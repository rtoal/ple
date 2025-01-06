using StringTools;

typedef Player = {
  var team : String;
  var name : String;
  var games : Float;
  var points : Float;
  var average : Float;
}

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
    var players:Array<Player> = [];
    try {
      // Not sure if there's a better way to do this than 
      // "making an infinite loop then breaking it."
      while (true) {
        var data:Array<Dynamic> = Sys.stdin().readLine().split(",");
        var player:Player = {
          team: data[0], 
          name: data[1], 
          games: Std.parseFloat(data[2]), 
          points: Std.parseFloat(data[3]),
          average: Math.round(Std.parseFloat(data[3]) / Std.parseFloat(data[2]) * 100) / 100
        }
        if (player.games >= 15) players.push(player);
      }
    }
    catch (e:haxe.io.Eof) {}
    // Multiply by 100 to prevent floating point errors.
    players.sort((a, b) -> Math.round(b.average * 100 - a.average * 100));
    for (player in players.slice(0, 10)) haxe.Log.trace(
      '${player.name.rpad(" ", 22)}' +
      '${player.team.rpad(" ", 4)}' +
      '${formatFloat(player.average).lpad(" ", 8)}'
      , null);
  }
}