import java.util.Optional;
public class OptionalDemo {
    public static void main(String[] args) {
        Person alice = new Person("Alice");
        Person bob = new Person("Bob", alice);

        bob.getBoss().ifPresent(p -> {assert p == alice;});
        alice.getBoss().ifPresent(p -> {assert false;});
        assert alice.getBoss().orElse(bob) == bob;
        assert bob.getBoss().orElse(bob) == alice;

        Optional<Person> b = bob.getBoss();
        assert b.filter(p -> p.getName().startsWith("A")) == b;
        assert !b.filter(p -> p.getName().startsWith("B")).isPresent();
        assert b.map(Person::getName).orElse("").equals("Alice");
        assert alice.getBoss().map(Person::getName).orElse("").equals("");
    }
}

