import Html exposing (Html, program)
import Svg exposing (svg, circle, text_, text)
import Svg.Attributes exposing (..)
import Time exposing (Time, second)

main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

type alias Model = Int

type Msg
    = Tick Time

init : (Model, Cmd Msg)
init =
    (10, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    if model <= 0 then
        Sub.none
    else
        Time.every second Tick

update : Msg -> Model -> (Model, Cmd Msg)
update action model =
    case action of
        Tick _ ->
            (model - 1, Cmd.none)

view : Model -> Html Msg
view model =
    svg [ viewBox "0 0 100 100", width "400px" ]
        [ circle [ cx "50", cy "50", r "45", fill "#A88428" ] []
        , text_ [x "50", y "50", fontSize "64", textAnchor "middle",
            dominantBaseline "central"] [text <| toString model]
        ]
