public class AnimalsApp {
    public static void main(String[] args) {
        Animal s = new Horse("CJ");
        assert s.speak().equals("CJ says neigh");
        Animal c = new Cow("Bessie");
        assert c.speak().equals("Bessie says moooo");
        assert(new Sheep("Little Lamb").speak().equals(
            "Little Lamb says baaaa"));
    }
}
