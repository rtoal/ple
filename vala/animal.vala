public abstract class Animal : Object {
  private string name;
	
  protected Animal(string name) {
    this.name = name;
  }

  public string speak() {
    return name + " says " + sound() + "\n";
  }

  public abstract string sound();
}

public class Cow : Animal {
  public Cow(string name) {
    base(name);
  }

  public override string sound() {
    return "MOOOOOO";
  }
}

public class Sheep : Animal {
  public Sheep(string name) {
    base(name);
  }

  public override string sound() {
    return "BAAAAA";
  }
}

class Demo.HelloWorld : GLib.Object {
  public static int main(string[] args) {
    Cow molly = new Cow("Molly");
    Sheep dolly = new Sheep("Dolly");
    stdout.printf(molly.speak());
    stdout.printf(dolly.speak());
    return 0;
  }
}
