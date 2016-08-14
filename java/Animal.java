abstract class Animal {
    private String name;
    public Animal(String name) {
        this.name = name;
    }
    abstract String sound();
    public String speak() {
        return name + " says " + sound();
    }
}
