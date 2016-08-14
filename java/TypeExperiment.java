public class TypeExperiment {
    public static void main(String[] args) {
        Object x;
        if (Math.random() < 0.5) {
            x = "a string";
        } else {
            x = 5;
        }
        System.out.println(x.getClass());
    }
}
