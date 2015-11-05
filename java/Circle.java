class Circle {

    private double x;
    private double y;
    private double r;

    public Circle(double x, double y, double r) {
        this.x = x;
        this.y = y;
        this.r = r;
    }

    public double area() {
        return Math.PI * this.r * this.r;
    }

    public static double area(double r) {
        return Math.PI * r * r;
    }

}