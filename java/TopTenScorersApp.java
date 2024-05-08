import java.io.BufferedReader;
import java.io.InputStreamReader;

public class TopTenScorersApp {

    public static void main(String[] args) {

        record Player(String team, String name, int games, double ppg) {
            static Player fromLine(String[] line) {
                var points = Double.parseDouble(line[3]);
                var games = Integer.parseInt(line[2]);
                return new Player(line[0], line[1], games, points/games);
            }

            String reportLine() {
                return String.format("%-22s%-4s%8.2f", name, team, ppg);
            }
        }

        new BufferedReader(new InputStreamReader(System.in))
                .lines()
                .map(line -> line.split(","))
                .map(Player::fromLine)
                .filter(p -> p.games >= 15)
                .sorted((p1, p2) -> Double.compare(p2.ppg, p1.ppg))
                .limit(10)
                .map(Player::reportLine)
                .forEach(System.out::println);
    }
}
