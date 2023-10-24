record Box<T>(T value) {
}

class ErasureExample {
    public static void main(String[] args) {
        Box<String> intBox = new Box<>("Hello");
        Box<Integer> stringBox = new Box<>(1);
        // stringBox = intBox; // compile-time error
        assert intBox.getClass() == stringBox.getClass();
    }
}