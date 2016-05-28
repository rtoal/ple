import ElmTest exposing (suite, defaultTest, runSuite, assertEqual)
import List exposing (map)
import Anagrams exposing (anagrams)

cases =
  [ ("", [""])
  , ("a", ["a"])
  , ("ab", ["ab", "ba"])
  , ("abc", ["abc", "bac", "bca", "acb", "cab", "cba"])
  ]

test (input, expected) =
  defaultTest <| expected `assertEqual` anagrams input

main =
  runSuite <| suite "Anagrams" <| map test cases
