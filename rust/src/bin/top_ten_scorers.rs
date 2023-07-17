use std::io::{self, BufRead};
use std::cmp::Ordering;

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
        .map(|line| {
            let fields: Vec<&str> = line.split(',').collect();
            let games = fields[2].parse::<i32>().ok()?;
            let points = fields[3].parse::<i32>().ok()?;
            if games >= 15 {
                let ppg = points as f64 / games as f64;
                Some(Player {
                    name: fields[1].to_string(),
                    team: fields[0].to_string(),
                    ppg,
                })
            } else {
                None
            }
        })
        .flatten()
        .collect();

    let mut sorted_players = players;
    sorted_players.sort_by(|a, b|
        b.ppg.partial_cmp(&a.ppg).unwrap_or(Ordering::Equal));

    for player in sorted_players.iter().take(10) {
        println!("{:22}{:4}{:8.2}", player.name, player.team, player.ppg);
    }
}
