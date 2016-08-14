interface Drawable {
    void outline(Color color);
    void fill(Color color);
    default void render(Color outlineColor, Color fillColor) {
        fill(fillColor);
        outline(outlineColor);
    }
}

class Color {}

public class ShapeDemo implements Drawable {
    public void outline(Color color) {}
    public void fill(Color color) {}
}
