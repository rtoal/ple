import SimpleAssert exposing (assertAll)
import Anagrams exposing (anagrams)

main = assertAll
    [ anagrams "" == [ "" ]
    , anagrams "a" == [ "a" ]
    , anagrams "ab" == [ "ab", "ba" ]
    , anagrams "abc" == [ "abc", "bac", "bca", "acb", "cab", "cba" ]
    ]
