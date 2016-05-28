import Html exposing (Html, img)
import Html.Attributes exposing (style, src)
import Html.App as App
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
  , image : String
  }

init : (Model, Cmd Msg)
init =
  ({x = 0, y = 0, image = "js"}, Cmd.none)

type Msg
  = Down
  | Up
  | MoveTo Int Int

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Down ->
      ({model | image = "elm"}, Cmd.none)
    Up ->
      ({model | image = "js"}, Cmd.none)
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
  img
    [ style
      [ ("position", "absolute")
      , ("left", toString (model.x+2) ++ "px")
      , ("top", toString (model.y+2) ++ "px")
      ]
    , src (model.image ++ "-logo.png")
    ]
    []
