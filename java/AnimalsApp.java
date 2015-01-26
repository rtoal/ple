abstract class Animal {
    private String name;
    public Animal(String name) {
        this.name = name;
    }
    abstract String sound();
    public void speak() {
        System.out.println(name + " says " + sound());
    }
}

class Cow extends Animal {
    public Cow(String name) {
        super(name);
    }
    @Override String sound() {
        return "moooo";
    }
}

class Horse extends Animal {
    public Horse(String name) {
        super(name);
    }
    @Override String sound() {
        return "neigh";
    }
}

class Sheep extends Animal {
    public Sheep(String name) {
        super(name);
    }
    @Override String sound() {
        return "baaaa";
    }
}

public class AnimalsApp {
    public static void main(String[] args) {
        Animal s = new Horse("CJ");
        s.speak();
        Animal c = new Cow("Bessie");
        c.speak();
        new Sheep("Little Lamb").speak();
    }
}
