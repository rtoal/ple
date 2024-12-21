typedef Dancer = {
  var name : String;
  var age : Int;
  function dance() : Void;
}

class TypeDef {
  public static function main():Void {
    var dancer:Dancer = {name: "Amy", age: 27, dance:dance};   
    haxe.Log.trace('${dancer.name} is aged ${dancer.age}', null);
    dancer.dance();
  }

  public static function dance():Void {
    haxe.Log.trace('DANCE! DANCE! DANCE!', null);
  }
}

