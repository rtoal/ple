import ElmTest exposing (suite, test, runSuite, assertEqual)

f : (Int, Int, Int) -> Int
f (a, _, c) =
  3 * c + a

type alias Vector = (Float, Float)

magnitude : Vector -> Float
magnitude v =
  let (x, y) = v in
    sqrt(x * x + y * y)

main : Program Never
main =
  runSuite <| suite "Tuples"
    [ test "Value Semantics for =" ((6,8) `assertEqual` (7-1,4*2))
    , test "Pattern match" (f(1,2,3) `assertEqual` 10)
    , test "Destructuring" (magnitude(3,4) `assertEqual` 5.0)
    , test "Tuple return" ((\x -> (x,x))1 `assertEqual` (1,1))
    ]
