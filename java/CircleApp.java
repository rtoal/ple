public class CircleApp {
    public static void main(String[] args) {
        Circle c1 = new Circle(3, 5, 1);
        Circle c2 = Circle.create(2, 8, 10);
        assert c1.area() == Math.PI && c2.area() == 100*Math.PI;
        assert Circle.area(2) == 4*Math.PI;
    }
}
