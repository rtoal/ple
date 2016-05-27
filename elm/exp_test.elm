import ElmTest exposing (suite, defaultTest, runSuite, assertEqual)
import Exp exposing (Exp(Num, Unary, Binary), eval)

main =
  let
    e1 = Num { value = 5.0 }
    e2 = Unary { op = negate, operand = e1 }
    e3 = Binary { op = (*), left = e2, right = e1 }
  in
    runSuite <| suite "Expression evaluation"
      [ defaultTest <| 5.0 `assertEqual` eval(e1)
      , defaultTest <| -5.0 `assertEqual` eval(e2)
      , defaultTest <| -25.0 `assertEqual` eval(e3)
      ]
