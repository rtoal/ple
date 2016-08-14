public class MinMaxTester {
    public static void main(String[] args) {
        MinMax<Integer> m = new MinMax<>(2, 5);
        assert m.getMin() == 2 && m.getMax() == 5;
        MinMax<String> s = new MinMax<>("rat", "mouse");
        assert s.getMin().equals("mouse") && s.getMax().equals("rat");
    }
}
