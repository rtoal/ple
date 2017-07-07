import Anagrams exposing (anagrams)
import Html exposing (Html, div, text, input, beginnerProgram)
import Html.Attributes exposing (placeholder, value, maxlength)
import Html.Events exposing (onInput)

type alias Model =
    String

type Message
    = ChangeTo String

main =
    Html.beginnerProgram { model = "", view = view, update = update }

update : Message -> Model -> Model
update (ChangeTo newModel) model =
    newModel

view : Model -> Html Message
view model =
    div [] <|
        (input
            [ placeholder "Text to anagram"
            , value model
            , maxlength 6
            , onInput ChangeTo
            ][]) :: List.map (\s -> div [] [ text s ]) (anagrams model)
