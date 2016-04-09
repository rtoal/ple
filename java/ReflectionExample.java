import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
public class ReflectionExample {
    public static void main(String[] args) throws Exception {
        Class<?> c = Class.forName("Horse");
        Constructor<?> ctor = c.getConstructor(String.class);
        Animal h = Animal.class.cast(ctor.newInstance("CJ"));
        Method m = h.getClass().getMethod("speak");
        assert m.invoke(h).equals("CJ says neigh");
    }
}
