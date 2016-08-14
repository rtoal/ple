import java.util.stream.IntStream;

public class EvenSquareSummer {
    public static int sumOfEvenSquares(int[] a) {
        return IntStream.of(a).filter(x -> x%2 == 0).map(x -> x*x).sum();
    }

    public static void main(String[] args) {
        System.out.println(sumOfEvenSquares(new int[]{}));
        System.out.println(sumOfEvenSquares(new int[]{1}));
        System.out.println(sumOfEvenSquares(new int[]{1,2}));
        System.out.println(sumOfEvenSquares(new int[]{1,2,3}));
        System.out.println(sumOfEvenSquares(new int[]{1,2,3,4}));
        System.out.println(sumOfEvenSquares(new int[]{1,2,3,4,5}));
        System.out.println(sumOfEvenSquares(new int[]{1,2,3,4,5,6}));
        System.out.println(sumOfEvenSquares(new int[]{1,2,3,4,5,6,7}));
    }
}