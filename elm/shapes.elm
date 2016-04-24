import Graphics.Element exposing (show)
import ElmTest exposing (elementRunner, suite, defaultTest, assertEqual)

type Shape
  = Circle Float
  | Rectangle Float Float

area s =
  case s of
    Circle r ->
      pi * r * r
    Rectangle h w ->
      h * w

perimeter s =
  case s of
    Circle r ->
      2 * pi * r
    Rectangle h w ->
      2 * (h + w)

main =
  elementRunner <| suite "Test shape functions"
    [ defaultTest <| area (Circle 10) `assertEqual` (100*pi)
    , defaultTest <| perimeter (Circle 10) `assertEqual` (20*pi)
    , defaultTest <| area (Rectangle 2 8) `assertEqual` 16
    , defaultTest <| perimeter (Rectangle 2 8) `assertEqual` 20
    ]
