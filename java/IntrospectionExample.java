public class IntrospectionExample {
    public static void main(String[] args) throws Exception {

        // Check types at runtime
        Animal bessie = new Cow("Bessie");
        assert bessie instanceof Cow;
        assert bessie.getClass() == Cow.class;

        // Get a class object via its name!
        assert Class.forName("Cow") == Cow.class;

        // Inspect a class
        assert Cow.class.getName() == "Cow";
        assert Cow.class.getSuperclass() == Animal.class;
        assert Animal.class.getDeclaredMethods().length == 2;
    }
}
