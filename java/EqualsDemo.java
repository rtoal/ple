import java.time.LocalDate;
public class EqualsDemo {
    public static void main(String[] args) {
        LocalDate d1 = LocalDate.of(2020, 2, 29);
        LocalDate d2 = LocalDate.of(2020, 2, 29);
        assert !(d1 == d2) && d1.equals(d2);
    }
}
