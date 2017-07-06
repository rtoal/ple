import List exposing (map, foldl)
import Dict exposing (Dict, insert, get, toList)
import String exposing (toLower)
import Regex exposing (regex, find)
import Maybe exposing (withDefault)
import Html exposing (table, tr, td, text)
import Html.Attributes exposing (style)

message =
    "The fox. It jumped over/under...it did it did the Fox."

countWord : String -> Dict String Int -> Dict String Int
countWord word counts =
    insert word (withDefault 0 (get word counts) + 1) counts

tableCell data =
    td [] [text <| toString data]

main =
    find Regex.All (regex "[A-Za-z']+") message
    |> map (.match >> toLower)
    |> foldl countWord Dict.empty
    |> toList
    |> map (\(word, count) -> tr [] [tableCell word, tableCell count])
    |> table [style [("border", "1px solid black")]]
