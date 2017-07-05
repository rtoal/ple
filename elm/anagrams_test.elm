import Html exposing (text)
import Anagrams exposing (anagrams)

main = text <| toString <| if List.all ((==) True)
    [ anagrams "" == [ "" ]
    , anagrams "a" == [ "a" ]
    , anagrams "ab" == [ "ab", "ba" ]
    , anagrams "abc" == [ "abc", "bac", "bca", "acb", "cab", "cba" ]
    ] then () else Debug.crash ""
