import Anagrams exposing (anagrams)
import List exposing (map)
import Html exposing (div, text, input)
import Html.Attributes exposing (placeholder, value, maxlength)
import Html.Events exposing (onInput, targetValue)
import Html.App as App

type alias Model = String
type Message = ChangeTo String

main =
  App.beginnerProgram { model = "", view = view, update = update }

update (ChangeTo newModel) model =
  newModel

view model =
  div []
    ((input
      [ placeholder "Text to anagram"
      , value model
      , maxlength 6
      , onInput ChangeTo
      ]
      []) :: map (\s -> div [] [text s]) (anagrams model))
