import Graphics.Element exposing (show, flow, down)
import List exposing (map, concatMap, filterMap)

main =
  [1..40] |> concatMap (\c ->
    [1..c-1] |> concatMap (\b ->
      [1..b-1] |> filterMap (\a ->
        (if a*a+b*b==c*c then Just (a,b,c) else Nothing))))
    |> map show
    |> flow down
