import java.io.BufferedReader;
import java.io.InputStreamReader;
import static java.util.stream.Collectors.toList;
import static java.lang.Integer.parseInt;

public class TopTenScorersApp {
    public static void main(String[] args) {

    class Player {
        final String name;
        final String team;
        final int games;
        final double ppg;
        Player(String[] line) {
            this.team = line[0];
            this.name = line[1];
            this.games = Integer.parseInt(line[2]);
            this.ppg = Double.parseDouble(line[3]) / games;
        }
    }

    new BufferedReader(new InputStreamReader(System.in))
        .lines()
        .map(line -> line.split(","))
        .map(Player::new)
        .filter(p -> p.games >= 15)
        .sorted((p1, p2) -> Double.compare(p2.ppg, p1.ppg))
        .limit(10)
        .map(p -> String.format("%-22s%-4s%8.2f", p.name, p.team, p.ppg))
        .forEach(System.out::println);
    }
}
