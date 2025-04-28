import gleam/int
import gleam/io
import gleam/list
import gleam/string

pub fn main() {
  let pad = fn(n: Int) { string.pad_start(int.to_string(n), 2, "0") }
 
  list.range(0, 10) |> list.map(fn (i) {
    let t = {i * 43200 + 21600} / 11
    let h = t / 3600
    let m = t / 60 % 60
    let s = t % 60
    let h = case h {
      0 -> 12
      _ -> h
    }
    io.println(pad(h) <> ":" <> pad(m) <> ":" <> pad(s))
  })
}