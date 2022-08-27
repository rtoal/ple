public class ArithmeticSequenceDemo {
    public static void main(String[] args) {
        var g1 = new ArithmeticSequence(10, 3);
        assert g1.next() == 10;
        assert g1.next() == 13;
        assert g1.next() == 16;
        var g2 = new ArithmeticSequence(21, -2);
        assert g2.next() == 21;
        assert g2.next() == 19;
    }
 }
