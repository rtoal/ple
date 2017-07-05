import SimpleAssert exposing (assertAll)

f : (Int, Int, Int) -> Int
f (a, _, c) =
    3 * c + a

type alias Vector = (Float, Float)

magnitude : Vector -> Float
magnitude v =
    let (x, y) = v in
        sqrt(x * x + y * y)

main = assertAll
    [ (6, 8) == (7 - 1, 4 * 2)     -- value semantics for ==
    , f (1, 2, 3) == 10            -- pattern match
    , magnitude (3, 4) == 5.0      -- destructuring
    , (\x -> (x, x)) 1 == (1, 1)   -- returning tuple from function
    ]
