public class CovariantArrayDemo {

    public static void main(String[] args) {
        Animal[] animals = new Sheep[10];       // Covariance, sadly
        try {
            animals[0] = new Cow("Bessie");
        } catch (ArrayStoreException e) {
            System.out.println("Runtime type checking!");
        }
    }
}
