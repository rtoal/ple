class Horse extends Animal {
    public Horse(String name) {
        super(name);
    }
    @Override String sound() {
        return "neigh";
    }
}
