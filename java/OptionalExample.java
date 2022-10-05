import java.util.Optional;

public class OptionalExample {
    public static void main(String[] args) {
        var alice = new Person("Alice");
        var bob = new Person("Bob", alice);

        bob.boss().ifPresent(p -> {
            assert p == alice;
        });
        alice.boss().ifPresent(p -> {
            assert false;
        });
        assert alice.boss().orElse(bob) == bob;
        assert bob.boss().orElse(bob) == alice;

        Optional<Person> b = bob.boss();
        assert b.filter(p -> p.name().startsWith("A")) == b;
        assert !b.filter(p -> p.name().startsWith("B")).isPresent();
        assert b.map(Person::name).orElse("").equals("Alice");
        assert alice.boss().map(Person::name).orElse("").equals("");
    }
}
