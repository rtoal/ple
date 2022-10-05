public class MinMaxTester {
    public static void main(String[] args) {
        MinMax<Integer> m = new MinMax<>(2, 5);
        assert m.min() == 2 && m.max() == 5;
        MinMax<String> s = new MinMax<>("rat", "mouse");
        assert s.min().equals("mouse") && s.max().equals("rat");
    }
}
