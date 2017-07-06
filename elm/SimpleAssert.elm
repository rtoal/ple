module SimpleAssert exposing (assertAll)

import Html exposing (text)

assertAll assertions = text <| toString <|
    if List.all ((==) True) assertions
        then "All tests passed"
        else Debug.crash "Assertion failure"
