import argv
import gleam/io
import gleam/list
import gleam/string

pub fn main() {
  case argv.load().arguments {
    [word] ->
      word
      |> string.split("")
      |> list.permutations
      |> list.map(fn(letters) { string.join(letters, "") })
      |> list.each(fn(word) { io.println(word) })
    _ -> panic as "ERROR: There must be exactly 1 argument."   
  }
}