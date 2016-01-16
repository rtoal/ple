import Html exposing (ul, li, text)
import List exposing (map, concatMap, filter)

values =
  [1..40] |> concatMap (\z ->
    [1..z-1] |> concatMap (\y ->
      [1..y-1] |> map (\x -> (x,y,z)))) |>
        filter (\(x,y,z) -> x*x+y*y==z*z)

main =
  ul [] (values |> map (\t -> li [] [text(toString(t))]))
