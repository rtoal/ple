import Html exposing (text)
import Shapes exposing (Shape(Circle, Rectangle), area, perimeter)

main = text <| toString <| if List.all ((==) True)
    [ area (Circle 10) == (100*pi)
    , perimeter (Circle 10) == (20*pi)
    , area (Rectangle 2 8) == 16
    , perimeter (Rectangle 2 8) == 20
    ] then () else Debug.crash ""
