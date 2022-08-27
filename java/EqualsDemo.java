import java.time.LocalDate;

public class EqualsDemo {
    public static void main(String[] args) {
        var d1 = LocalDate.of(2020, 2, 29);
        var d2 = LocalDate.of(2020, 2, 29);
        assert d1 != d2; // These are two distinct objects
        assert d1.equals(d2); // But each of the fields are equal
    }
}
