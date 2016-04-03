import java.util.Set;
import java.util.HashSet;

public class SheepAdder {
    public static void main(String[] args) {
        Set<? super Sheep> s1 = new HashSet<Object>();
        Set<? super Sheep> s2 = new HashSet<Animal>();
        Set<? super Sheep> s3 = new HashSet<Sheep>();
        Sheep sheep = new Sheep("Rafe");
        s1.add(sheep);
        s2.add(sheep);
        s3.add(sheep);
    }
}
