import SimpleAssert exposing (assertAll)
import Exp exposing (Exp(Num, Unary, Binary), eval)

main =
    let
        e1 = Num { value = 5.0 }
        e2 = Unary { op = negate, operand = e1 }
        e3 = Binary { op = (*), left = e2, right = e1 }
    in
        assertAll
            [ eval e1 == 5.0
            , eval e2 == -5.0
            , eval e3 == -25.0
            ]
