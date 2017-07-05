import Html exposing (text)
import Anagrams exposing (anagrams)

main = text <| toString <| if List.all (\(s, t) -> anagrams s == t)
    [ ( "", [ "" ] )
    , ( "a", [ "a" ] )
    , ( "ab", [ "ab", "ba" ] )
    , ( "abc", [ "abc", "bac", "bca", "acb", "cab", "cba" ] )
    ] then () else  Debug.crash ""
