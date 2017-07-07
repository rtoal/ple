import Html exposing (text, ul, li)
import List exposing (map, concatMap, filterMap, repeat, range)

main =
    range 1 40 |> concatMap (\c ->
        range 1 (c-1) |> concatMap (\b ->
            range 1 (b-1) |> filterMap (\a ->
                if a*a + b*b == c*c then Just (a, b, c) else Nothing)))
        |> map (toString >> text >> repeat 1 >> li [])
        |> ul []
