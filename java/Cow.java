class Cow extends Animal {
    public Cow(String name) {
        super(name);
    }
    @Override String sound() {
        return "moooo";
    }
}
