-- An astract syntax and denotational semantics of
-- a little language

import SimpleAssert exposing (assertAll)
import Dict exposing (Dict, insert, get)
import Maybe exposing (withDefault)

type Exp
    = Literal Int
    | Var String
    | Plus Exp Exp

type Command
    = Assign String Exp
    | Read String
    | Print Exp
    | Seq Command Command

type alias Input = List Int
type alias Output = List Int
type alias Store = Dict String Int
type alias State = (Store, Input, Output)

eval: Exp -> Store -> Int
eval e store =
    case e of
        Literal n -> n
        Var v -> withDefault 0 (get v store)
        Plus e1 e2 -> eval e1 store + eval e2 store

exec: Command -> Maybe State -> Maybe State
exec c state =
    case state of
        Nothing -> Nothing
        Just (store, infile, outfile) ->
            case c of
                Assign v e -> Just (insert v (eval e store) store, infile, outfile)
                Read v -> case infile of
                    [] -> Nothing
                    (x::rest) -> Just (insert v x store, rest, outfile)
                Print e -> Just (store, infile, outfile ++ [eval e store])
                Seq c1 c2 -> exec c2 (exec c1 state)

main =
    let
        p0 = Print (Literal 5)
        p1 = Print (Plus (Literal 8) (Var "x"))
        p2 = Seq (Assign "x" (Literal 5))
            (Seq (Read "y") (Print (Plus (Var "x") (Var "y"))))
        run com input = exec com (Just (Dict.empty, input, []))
    in
        assertAll
            [ run p0 [] == Just (Dict.empty, [], [5])
            , run p1 [] == Just (Dict.empty, [], [8])
            , run p2 [8] == Just (Dict.fromList [("y",8),("x",5)], [], [13])
        ]
