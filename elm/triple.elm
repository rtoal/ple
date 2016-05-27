import Html exposing (text, div)
import List exposing (map, concatMap, filterMap, repeat)

main =
  [1..40] |> concatMap (\c ->
    [1..c-1] |> concatMap (\b ->
      [1..b-1] |> filterMap (\a ->
        (if a*a+b*b==c*c then Just (a,b,c) else Nothing))))
    |> map (div [] << repeat 1 << text << toString)
    |> div []
