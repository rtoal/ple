public class BillionDollarMistakeExample {
    public static void main(String[] args) {
        try {
            String message = null; // WHY IS THIS ALLOWED?
            System.out.println(message.toLowerCase());
            assert false; // Execution will never get here
        } catch (NullPointerException e) {
            System.out.println("Surprise!! Run-type checked!!");
        }
    }
}
