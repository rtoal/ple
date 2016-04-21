import Regex exposing (regex, find)
import List exposing (map, foldl)
import Dict exposing (Dict, insert, get, toList)
import String exposing (toLower)
import Graphics.Element exposing (show, flow, down)
import Maybe exposing (withDefault)

message =
  "The fox. It jumped over/under...it did it did the Fox."

countWord : String -> Dict String Int -> Dict String Int
countWord word counts =
  insert word (withDefault 0 (get word counts) + 1) counts

main =
  find Regex.All (regex "[A-Za-z']+") message
    |> map (.match >> toLower)
    |> foldl countWord Dict.empty
    |> toList
    |> map show
    |> flow down
