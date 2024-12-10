// Assertion tests were not included in Haxe or its standard library.
class Assert {
  public static function expect(expr:Bool):Void {
    if (!expr) throw "Assertion test failed";
  }
}

class Animal {
  var name:String;

  public function new(name:String) {
    this.name = name;
  }

  public function speak():String {
    return '${this.name} says ${this.sound()}';
  }

  public function sound():String {
    return "";
  }
}

class Cow extends Animal {
  public function new(name:String) {
    super(name);
  }

  public override function sound():String {
    return "moo";
  }
}

class Horse extends Animal {
  public function new(name:String) {
    super(name);
  }

  public override function sound():String {
    return "neigh";
  }
}

class Sheep extends Animal {
  public function new(name:String) {
    super(name);
  }

  public override function sound():String {
    return "baaaa";
  }
}

class Animals {
  public static function main():Void {
    var s = new Horse("CJ");
    Assert.expect(s.speak() == "CJ says neigh");
    var c = new Cow("Bessie");
    Assert.expect(c.speak() == "Bessie says moo");
    Assert.expect(new Sheep("Little Lamb").speak() == "Little Lamb says baaaa");
  }
}