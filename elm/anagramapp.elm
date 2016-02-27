import Anagrams exposing (anagrams)
import List exposing (map)
import Signal exposing (Address)
import Html exposing (Html, Attribute, div, text, input)
import Html.Attributes exposing (placeholder, value, maxlength)
import Html.Events exposing (on, targetValue)
import StartApp.Simple as StartApp

type alias Model = String
type alias Action = String

main =
  StartApp.start { model = "", view = view, update = update }

update: Action -> Model -> Model
update new old =
  new

view : Address Action -> Model -> Html
view address string =
  div []
    ((input
      [ placeholder "Text to anagram"
      , value string
      , maxlength 6
      , on "input" targetValue (Signal.message address)
      ]
      []) :: map (\s -> div [] [text s]) (anagrams string))
