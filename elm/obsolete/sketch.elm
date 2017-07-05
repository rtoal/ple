module Main exposing (..)

import Graphics.Element exposing (Element)
import Graphics.Collage exposing (collage, traced, defaultLine, path)
import Signal exposing (foldp)
import Mouse exposing (position)
import Window exposing (dimensions)


main : Signal Element
main =
    Signal.map2 scene points Window.dimensions


points : Signal (List ( Float, Float ))
points =
    foldp (\( x, y ) points -> ( toFloat x, toFloat y ) :: points)
        []
        Mouse.position


scene : List ( Float, Float ) -> ( Int, Int ) -> Element
scene points ( width, height ) =
    let
        toCollageCoords ( x, y ) =
            ( x - toFloat width / 2, toFloat height / 2 - y )
    in
        collage width
            height
            [ traced defaultLine <|
                path <|
                    List.map toCollageCoords points
            ]
