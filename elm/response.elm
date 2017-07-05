import Html exposing (text)

type Response a
    = Ok a
    | Error String

squareRoot x =
    if x < 0 then Error "negative" else Ok (sqrt x)

main = text <| toString <| if List.all(\(x, y) -> squareRoot x == y)
    [ (9, Ok 3)
    , (100.0, Ok 10.0)
    , (-4, Error "negative")
    ] then () else Debug.crash ""
