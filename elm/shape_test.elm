import ElmTest exposing (elementRunner, suite, defaultTest, assertEqual)
import Shapes exposing (Shape(Circle, Rectangle), area, perimeter)

main =
  elementRunner <| suite "Test shape functions"
    [ defaultTest <| (100*pi) `assertEqual` area (Circle 10)
    , defaultTest <| (20*pi) `assertEqual` perimeter (Circle 10)
    , defaultTest <| 16 `assertEqual` area (Rectangle 2 8)
    , defaultTest <| 20 `assertEqual` perimeter (Rectangle 2 8)
    ]
