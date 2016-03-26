interface Drawable {
    void outline(Color outlineColor);
    void fill(Color fillColor);
    default void render(Color outlineColor, Color fillColor) {
        fill(fillColor);
        outline(outlineColor);
    }
}

class Color {}

public class ShapeDemo2 implements Drawable {
    public void outline(Color outlineColor) {}
    public void fill(Color fillColor) {}
}
