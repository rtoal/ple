use std::io::{self, BufRead};

struct Player {
    name: String,
    team: String,
    ppg: f64,
}

fn main() {
    let stdin = io::stdin();
    let players: Vec<Player> = stdin
        .lock()
        .lines()
        .filter_map(|line| line.ok())
        .filter_map(|line| {
            let fields: Vec<&str> = line.split(',').collect();
            let games: i32 = fields[2].parse().ok()?;
            let points: i32 = fields[3].parse().ok()?;
            if games < 15 {
                None
            } else {
                Some(Player {
                    name: fields[1].to_string(),
                    team: fields[0].to_string(),
                    ppg: points as f64 / games as f64,
                })
            }
        })
        .collect();

    let mut sorted_players = players;
    sorted_players.sort_by(|a, b| b.ppg.partial_cmp(&a.ppg).unwrap());

    for player in sorted_players.iter().take(10) {
        println!(
            "{:22}{:4}{:8.2}", player.name, player.team, player.ppg);
    }
}
