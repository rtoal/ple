import Anagrams exposing (anagrams)
import List exposing (map)
import Html exposing (div, text, input)
import Html.Attributes exposing (placeholder, value, maxlength)
import Html.Events exposing (onInput, targetValue)
import Html.App as Html

type alias Model = String
type alias Msg = String

main =
  Html.beginnerProgram { model = "", view = view, update = update }

update message model =
  message

view model =
  div []
    ((input
      [ placeholder "Text to anagram"
      , value model
      , maxlength 6
      , onInput (\s -> s)
      ]
      []) :: map (\s -> div [] [text s]) (anagrams model))
