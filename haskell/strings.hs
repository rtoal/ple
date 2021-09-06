import Control.Monad (guard)
import Data.Char (ord, toUpper, isLetter)
import Data.List (intersperse, intercalate)

main = do
    guard $ "a←b" == ['a', '←', 'b']
    guard $ null ""
    guard $ map ord "a←b" == [97,8592,98]
    guard $ map toUpper "a←b" == "A←B"
    guard $ take 2 "a←b" == "a←"
    guard $ length "a←b" == 3
    guard $ [c | c <- "a←b", isLetter c] == "ab"
    guard $ intersperse ',' "abc" == "a,b,c"
    guard $ intercalate "<->" ["AB","BC","CA"] == "AB<->BC<->CA"
    guard $ all isLetter "a←b" == False 
