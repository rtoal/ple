import Html exposing (Html, text, div)
import Html.Attributes exposing (style)
import Html.App as App
import Collage exposing (collage, move, circle, filled)
import Element exposing (toHtml)
import Color exposing (green)
import Mouse

main =
  App.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

type alias Model =
  { x : Int
  , y : Int
  , radius : Int
  }

init : (Model, Cmd Msg)
init =
  ({x = 0, y = 0, radius = 20}, Cmd.none)

type Msg
  = Down
  | Up
  | MoveTo Int Int

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Down ->
      ({model | radius = 25}, Cmd.none)
    Up ->
      ({model | radius = 20}, Cmd.none)
    MoveTo x y ->
      ({model | x = x, y = y}, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.batch
    [ Mouse.moves (\{x, y} -> MoveTo x y)
    , Mouse.downs (\_ -> Down)
    , Mouse.ups (\_ -> Up)
    ]

view: Model -> Html Msg
view model =
  div
    [ style
      [ ("position", "absolute")
      , ("left", toString model.x ++ "px")
      , ("top", toString model.y ++ "px")
      ]
    ]
  [text "HELLO"]
