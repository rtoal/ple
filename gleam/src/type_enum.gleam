import gleam/float
import gleam/list
import gleam/result

pub type Direction {
  North
  East
  South
  West
}

pub fn main() {
  let directions = [East, South, South, South, West, North, West]
  let displacement = get_displacement(directions)
  echo "Your displacement is " <> float.to_string(displacement)
}

pub fn get_displacement(directions) {
  let point = directions
  |> list.map ( fn(direction) {
    case direction {
      North -> #(0.0,1.0)
      East  -> #(1.0,0.0)
      South -> #(0.0,-1.0)
      West  -> #(-1.0,0.0)
    }
  })
  |> list.reduce( fn(p1, p2) {
    #(p1.0 +. p2.0, p1.1 +. p2.1)
  })
  |> result.unwrap(#(0.0,0.0))
  
  float.square_root(point.0 *. point.0 +. point.1 *. point.1)
  |> result.unwrap(0.0)
}