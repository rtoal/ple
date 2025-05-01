import argv
import gleam/float
import gleam/int
import gleam/io
import gleam/list
import gleam/result
import gleam/string

pub type Player {
  Player(name: String, team: String, games: Int, ppg: Float) 
  None(name: String, team: String, games: Int, ppg: Float)
}

pub fn format_float(num: Float, significant: Int) {
  num
  |> float.to_precision(significant)
  |> float.to_string
  |> fn(s) { 
    case {{string.crop(s, ".") |> string.length} < significant + 1} {
      True -> s <> "0"
      False -> s
    }
  }
}

pub fn print_player(player: Player) {
  { 
    string.pad_end(player.name, 22, " ") <>
    string.pad_end(player.team, 4, " ") <>
    string.pad_start(format_float(player.ppg, 2), 8, " ")
  }
  |> io.println
}

pub fn main() {
  argv.load().arguments
  |> list.map( fn(line) {
    case string.split(line, ",") {
      [team, name, games, points] -> {
        let total_points = int.parse(points) |> result.unwrap(0)
        let total_games = int.parse(games) |> result.unwrap(0)
        let ppg = int.to_float(total_points) /. int.to_float(total_games)
        Player(name, team, total_games, ppg)
      }
      _ -> None("", "", 0, 0.0)
    }
  })
  |> list.filter( fn(player) {player.games >= 15} )
  |> list.sort( fn(p1, p2) { float.compare(p2.ppg, p1.ppg) } )
  |> list.take(10)
  |> list.each(print_player)
}