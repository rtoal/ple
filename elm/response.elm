import Html exposing (text)

type Response a
    = Ok a
    | Error String

squareRoot x =
    if x < 0 then Error "negative" else Ok (sqrt x)

main = text <| toString <| if List.all((==) True)
    [ squareRoot 9 == Ok 3
    , squareRoot 100.0 == Ok 10.0
    , squareRoot -4 == Error "negative"
    ] then () else Debug.crash ""
