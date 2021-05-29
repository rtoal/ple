import java.io.BufferedReader;
import java.io.InputStreamReader;

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
            String reportLine() {
                return String.format("%-22s%-4s%8.2f", name, team, ppg);
            }
        }

        new BufferedReader(new InputStreamReader(System.in))
            .lines()
            .map(line -> line.split(","))
            .map(Player::new)
            .filter(p -> p.games >= 15)
            .sorted((p1, p2) -> Double.compare(p2.ppg, p1.ppg))
            .limit(10)
            .map(p -> p.reportLine())
            .forEach(System.out::println);
    }
}
