module SimpleAssert exposing (assertAll)

import Html exposing (text)

assertAll assertions = text <| toString <|
    if List.all ((==) True) assertions
        then toString (List.length assertions) ++ " tests passed"
        else Debug.crash "Assertion failure"
