public class ArithmeticSequence {
    private int delta;
    private int current;

    public ArithmeticSequence(int start, int delta) {
        this.current = start;
        this.delta = delta;
    }

    public int next() {
        int toReturn = current;
        current += delta;
        return toReturn;
    }
}
