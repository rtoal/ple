import java.util.List;

public class InvarianceExample {
    public static void main(String[] args) {
        List<Horse> horses = List.of(new Horse("CJ"));
        List <Cow> cows = List.of(new Cow("Bessie"));
        // IF List<Animal> animals = horses; were allowed
        // THEN animals.add(new Cow()); would be statically ok, YIKES!
        System.out.println(horses);
        System.out.println(cows);
    }
}
