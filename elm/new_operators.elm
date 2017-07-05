import Html exposing (text)

(<-*->): Int -> Int -> Int
(<-*->) x y =
    2 * x + y

(>*<): Int -> Int -> Int
(>*<) x y =
    2 * x + y

infix 8 <-*->
infix 2 >*<

main = text <| toString <| if List.all ((==) True)
    [ (8 * 3 <-*-> 5) == 88       -- 8*(2*3+5)
    , (8 * 3 >*< 5) == 53         -- 2*(8*2)+5
    ] then () else Debug.crash ""
