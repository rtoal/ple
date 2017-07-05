import SimpleAssert exposing (assertAll)

type Response a
    = Ok a
    | Error String

squareRoot x =
    if x < 0 then Error "negative" else Ok (sqrt x)

main = assertAll
    [ squareRoot 9 == Ok 3
    , squareRoot 100.0 == Ok 10.0
    , squareRoot -4 == Error "negative"
    ]
