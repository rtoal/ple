import SimpleAssert exposing (assertAll)
import Shapes exposing (Shape(Circle, Rectangle), area, perimeter)

main = assertAll
    [ area (Circle 10) == (100 * pi)
    , perimeter (Circle 10) == (20 * pi)
    , area (Rectangle 2 8) == 16
    , perimeter (Rectangle 2 8) == 20
    ]
