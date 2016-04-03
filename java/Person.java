import java.util.Optional;
import java.util.Objects;

class Person {
    private String name;
    private Optional<Person> boss;

    private Person(String name, Optional<Person> boss) {
        this.name = Objects.requireNonNull(name);
        this.boss = boss;
    }

    public Person(String name) {
        this(name, Optional.empty());
    }

    public Person(String name, Person boss) {
        this(name, Optional.of(boss));
    }

    public String getName() {return name;}
    public Optional<Person> getBoss() {return boss;}
}
