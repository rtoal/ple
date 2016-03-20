@FunctionalInterface
interface Function {
    double eval(double x);
}

public class TwiceApp {
    private static double twice(Function f, double x) {
        return f.eval(f.eval(x));
    }
    public static void main(String[] args) {
        System.out.println(twice((x)->x+2, 10));
        System.out.println(twice((x)->x*x, 4));
    }
}
