import java.util.List;
import java.util.Arrays;

public class MinMax<C extends Comparable> {
    private C min;
    private C max;
    public MinMax(C x, C y) {
        min = x.compareTo(y) < 0 ? x : y;
        max = x.compareTo(y) > 0 ? x : y;
    }
    public C getMin() {return min;}
    public C getMax() {return max;}
}
