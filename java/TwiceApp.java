@FunctionalInterface
interface Function {
    double apply(double x);
}

public class TwiceApp {
    private static double twice(Function f, double x) {
        return f.apply(f.apply(x));
    }

    public static void main(String[] args) {
        assert twice(x->x+2, 10) == 14;
        assert twice(Math::floor, -11.77) == -12;
    }
}
