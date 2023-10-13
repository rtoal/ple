import Control.Monad (guard)
import Data.List (find, elemIndex, stripPrefix)

main = do 
    guard $ elemIndex 'b' "abracadabra" == Just 1
    guard $ elemIndex 'e' "abracadabra" == Nothing
    guard $ stripPrefix "dog" "doghouse" == Just "house"
    guard $ stripPrefix "dog" "cat" == Nothing
    guard $ lookup "two" [("one","uno"),("two","dos")] == Just "dos"
    guard $ lookup "eleven" [("one","uno"),("two","dos")] == Nothing
    guard $ find even [3, 1, 8, 2, 10] == Just 8
    guard $ find even [3, 1, 5, -1, 11] == Nothing
