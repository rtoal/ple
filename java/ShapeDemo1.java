interface Drawable {
    void outline(Color outlineColor);
    void fill(Color fillColor);
}

class Color {}

public class ShapeDemo1 implements Drawable {
    public void outline(Color outlineColor) {}
    public void fill(Color fillColor) {}
}
