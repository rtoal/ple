interface Drawable {
    void outline(Color color);
    void fill(Color color);
}

class Color {}

public class ShapeDemo implements Drawable {
    public void outline(Color color) {}
    public void fill(Color color) {}
}
