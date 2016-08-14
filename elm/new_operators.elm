import ElmTest exposing (runSuite, suite, test, assertEqual)

(<-*->): Int -> Int -> Int
(<-*->) x y =
  2 * x + y

(>*<): Int -> Int -> Int
(>*<) x y =
  2 * x + y

infix 8 <-*->
infix 2 >*<

main =
  runSuite <| suite "Test own operators with precedence"
    [ test "high" <| (8 * 3 <-*-> 5) `assertEqual` 88  -- 8*(2*3+5)
    , test "low" <| (8 * 3 >*< 5) `assertEqual` 53     -- 2*(8*2)+5
    ]
