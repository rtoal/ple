import Mouse
import Window
import Color exposing (green)
import Graphics.Collage exposing (collage, move, circle, filled)
import Graphics.Element exposing (Element)

main : Signal Element
main =
  Signal.map3 scene Mouse.position Window.dimensions Mouse.isDown

scene : (Int,Int) -> (Int,Int) -> Bool -> Element
scene (mx,my) (w,h) down =
  let
    (x,y) = (toFloat mx - toFloat w/2, toFloat h/2 - toFloat my)
  in
    collage w h <|
      [circle (if down then 25 else 20)
        |> filled green
        |> move (x, y)]
