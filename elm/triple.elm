import Text (plainText)
import List (map,concatMap,filter)
import String (join)

values =
  [1..50] |> concatMap (\z ->
    [1..z-1] |> concatMap (\y ->
      [1..y-1] |> map (\x -> (x,y,z)))) |>
        filter (\(x,y,z) -> x*x+y*y==z*z)


main =
  values |> map toString |> join "\n" |> plainText
