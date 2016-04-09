import java.lang.reflect.Field;
public class ThreeIsFive {
    public static void main(String[] args) throws Exception {
        Field v = Integer.class.getDeclaredField("value");
        v.setAccessible(true);
        v.set(3,5);
        System.out.printf("%d\n", 3);
    }
}
