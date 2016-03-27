public class CovariantArrayDemo {

    static class Animal {}
    static class Dog extends Animal {}
    static class Cat extends Animal {}

    public static void main(String[] args) {
        Animal[] animals = new Dog[10];       // Covariance, hmmm
        try {
            animals[0] = new Cat();
        } catch (ArrayStoreException e) {
            System.out.println("Runtime type checking!");
        }
    }
}
