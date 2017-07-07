import SimpleAssert exposing (assertAll)

(<-*->): Int -> Int -> Int
(<-*->) x y = 2 * x + y

(>*<): Int -> Int -> Int
(>*<) x y = 2 * x + y

infix 8 <-*->
infix 2 >*<

main = assertAll
    [ (8 * 3 <-*-> 5) == 88       -- 8*(2*3+5)
    , (8 * 3 >*< 5) == 53         -- 2*(8*2)+5
    ]
