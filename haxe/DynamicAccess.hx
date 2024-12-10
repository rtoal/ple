class DynamicAccess {
  public static function main():Void {
    var market:haxe.DynamicAccess<Any> = {};

    market.set("name", "Farmer's Market");
    market.set("location", "San Francisco");
    market.set("eggs", 7.0);
    market.set("lettuce", 2.0);
    market.set("strawberries", 8.5);

    trace(market.get("name"));
    trace(market.get("location"));
    trace(market.get("strawberries"));
    trace(market.get("blueberries"));
    market.set("strawberries", 8.75);
    trace(market.get("strawberries"));

    trace(market.exists("eggs"));
    trace(market.exists("beets"));
  }
}