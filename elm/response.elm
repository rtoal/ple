import Graphics.Element exposing (show)
import ElmTest exposing (elementRunner, suite, defaultTest, assertEqual)

type Response a
  = Ok a
  | Error String

squareRoot: number -> Response number
squareRoot x =
  if x < 0 then Error "negative" else Ok (sqrt x)

main =
  elementRunner <| suite "Demonstrate Response tagged union"
    [ defaultTest <| squareRoot 9 `assertEqual` Ok 3
    , defaultTest <| squareRoot 100.0 `assertEqual` Ok 10.0
    , defaultTest <| squareRoot -4 `assertEqual` Error "negative"
    ]
