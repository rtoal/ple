import java.util.List;
import java.util.Arrays;

public class NoiseDemo {
    public static <T extends Animal> void chorus(List<T> animals) {
        for (T animal : animals) {
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
