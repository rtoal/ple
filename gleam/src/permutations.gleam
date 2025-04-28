import argv
import gleam/io
import gleam/list
import gleam/string

pub fn main() {
  case argv.load().arguments {
    [_, ..] ->
      argv.load().arguments
      |> list.permutations
      |> list.map(fn(words) { string.join(words, "\t") })
      |> list.each(io.println)
    _ -> panic as "ERROR: There must be at least 1 argument."   
  }
}