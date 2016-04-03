import java.util.Optional;
public class OptionalDemo {
    public static void main(String[] args) {
        Person alice = new Person("Alice");
        Person bob = new Person("Bob", alice);
        Person carol = new Person("Carol", bob);

        bob.getBoss().ifPresent(System.out::println);
        bob.getBoss().ifPresent(boss -> {assert boss == alice;});
        alice.getBoss().ifPresent(boss -> {assert false;});
        assert alice.getBoss().orElse(carol) == carol;
    }
}

