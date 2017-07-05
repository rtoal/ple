import Html exposing (Html, text, div)
import Mouse exposing (moves)

main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

type alias Model = (Int, Int)

init : (Model, Cmd Msg)
init =
    ((0,0), Cmd.none)

type Msg
    = Position Int Int

update: Msg -> Model -> (Model, Cmd Msg)
update (Position x y) model =
    ((x, y), Cmd.none)

subscriptions: Model -> Sub Msg
subscriptions model =
    Mouse.moves (\{x, y} -> Position x y)

view: Model -> Html Msg
view model =
    text (toString model)
