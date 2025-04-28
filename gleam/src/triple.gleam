import gleam/list
import gleam/int
import gleam/io
import gleam/string

pub fn main() {
  let print_triple = fn(triple: List(Int)) {
    triple
    |> list.map(int.to_string)
    |> string.join(", ")
    |> io.println
  }

  list.range(1, 40) |> list.each( fn(c) {
    list.range(1, c) |> list.each( fn(b) {
      list.range(1, b) |> list.each( fn(a) {
        case {a * a + b * b == c * c} {
          True -> print_triple([a, b, c])
          False -> Nil
        }
      })
    })
  })
}