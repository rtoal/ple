import Html exposing (ul, li, text)
import List exposing (map, concatMap, filter, repeat)

values =
  [1..40] |> concatMap (\c ->
    [1..c-1] |> concatMap (\b ->
      [1..b-1] |> map (\a -> (a,b,c)))) |>
        filter (\(a,b,c) -> a*a + b*b == c*c)

main =
  values |> map (toString >> text >> repeat 1 >> li []) |> ul []
