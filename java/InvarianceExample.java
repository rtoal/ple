import java.util.List;

class Animal {}
class Cow extends Animal {}
class Horse extends Animal {}

public class InvarianceExample {
    public static void main(String[] args) {
        List<Horse> horses = List.of(new Horse());
        List <Cow> cows = List.of(new Cow());
        // IF List<Animal> animals = horses; were allowed
        // THEN animals.add(new Cow()); would be statically ok, YIKES!
        System.out.println(horses);
        System.out.println(cows);
    }
}
