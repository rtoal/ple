module Main exposing (..)

import Graphics.Element exposing (Element, show)
import Graphics.Collage exposing (collage, move, oval, circle, filled)
import Color exposing (blue, red)
import Keyboard
import Window


main : Signal Element
main =
    Signal.map2 view Window.dimensions <|
        Signal.foldp update ( 0, 0 ) Keyboard.arrows


view : ( Int, Int ) -> ( Int, Int ) -> Element
view ( w, h ) ( x, y ) =
    collage w h <|
        [ circle 10 |> filled red |> move ( toFloat x, toFloat y + 10 )
        , oval 60 20 |> filled blue |> move ( toFloat x, toFloat y )
        ]


update : { x : Int, y : Int } -> ( Int, Int ) -> ( Int, Int )
update { x, y } ( shipX, shipY ) =
    ( shipX + 4 * x, shipY + 4 * y )
