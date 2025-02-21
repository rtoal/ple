import haxe.ds.Option;

class OptionEnum {
  public static function main():Void {
    var item:Option<String> = None;
    trace(item);

    item = Some("Hello");
    trace(item);
  }
}