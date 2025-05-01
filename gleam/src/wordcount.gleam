import argv
import gleam/dict
import gleam/int
import gleam/io
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/regexp
import gleam/string

pub fn main() {
  //////////////////////////////////////////////////////////////
  // Warning constantly stated if you don't use the Option type.
  // This is implemented to not get bombarded by Gleam warning 
  // messages when running some of the examples. This is not
  // apart of the example whatsoever.
  let m: List(Option(Int)) = [Some(1), None]
  list.each(m, fn(x) {
    case x {
      Some(i) -> i
      None -> 1
    }
  }) 
  //////////////////////////////////////////////////////////////

  let assert Ok(re) = regexp.from_string("[a-z\\']+")

  argv.load().arguments
  |> list.map( fn(line) {
    line
    |> string.lowercase
    |> regexp.scan(with: re)
  }) 
  |> list.flatten
  |> list.map( fn (word) { word.content } )
  |> list.fold(dict.from_list([]), fn(freq, word) {
    dict.upsert(freq, word, fn(n) {
      case n {
        Some(i) -> i + 1
        None -> 1
      }
    })
  })
  |> dict.to_list
  |> list.sort( fn(s1, s2) { string.compare(s1.0, s2.0) } )
  |> list.each( fn(item) { io.println(item.0 <> " " <> int.to_string(item.1)) })
}