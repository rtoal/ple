import java.util.List;
import java.util.Arrays;

public class AnimalChorusApp {
    public static void chorus(List<? extends Animal> animals) {
        for (Animal animal : animals) {
            System.out.println(animal.speak());
        }
    }

    public static void main(String[] args) {
        List<Cow> cows = Arrays.asList(new Cow("Bessie"));
        List<Sheep> sheep = Arrays.asList(new Sheep("Wooly"));
        chorus(cows);
        chorus(sheep);
    }
}
