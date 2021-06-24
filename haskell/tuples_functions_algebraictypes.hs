import Data.List (intercalate)
import Control.Monad (guard)
import Data.Char (toUpper)

isIncreasingTuple :: (Ord a) => (a,a) -> Bool -- this is our first type signature for the function isIncreasingTuple. It gives context to the tuple argument of type, a, which belongs to the typeclass Ord (more details on this to come), and returns a boolean value 
isIncreasingTuple (x, y) = x < y -- this function compares two values within a tuple and returns a boolean

tupleToList :: (Ord a) => (a,a) -> [a]
tupleToList (x,y) = [x,y] -- this function converts a tuple to a list

convertTuplesToListsWithValuesThatAreIncreasing :: (Ord a) => [(a,a)] -> [[a]]
convertTuplesToListsWithValuesThatAreIncreasing [(x,y), (z,w)] = map tupleToList (filter isIncreasingTuple [(x,y), (z,w)]) -- this is an example that demonstrates nesting function calls 

-- SHOULD WE DO AN EXAMPLE WHERE THE ABOVE IS COMPOSED INSTEAD? TRIED PLAYING AROUND WITH THIS RAN INTO SOME ISSUES 

add :: Num a => (a, a) -> a
add (x, y) = x + y -- this is an uncurried function, which is a style less preferred by haskell programmers

curriedAdd :: Num a => a -> a -> a
curriedAdd = \x -> \y -> x + y -- this is the exact same function as add, except it represents a curried function that involves closures, more details on these concepts to come

capitals :: [(String, String)]
capitals =
    [ ("CA", "Sacramento")
    , ("HI", "Honolulu")
    , ("WA", "Olympia")
    ] -- creates a dictionary of states and capitals 

-- NOT SURE IF tellMeAbout IS TOO COMPLEX IN THIS SET OF EXAMPLES

tellMeAbout :: String -> String
tellMeAbout state =
    case (lookup state capitals) of -- checks to see if a capital is in the dictionary via lookup, which returns a Maybe String representing a capital if it is there and Nothing if it is not (more on cases and monads to come)
        Just city -> "The capital of " ++ state ++ " is " ++ city -- should the monad contain a string, it is unwrapped to a value of type Just String (more on this later) and concatenated to the following message
        Nothing -> "I don't know anything about " ++ state -- should the monad contain Nothing, what is returned is the following message concatenated to the state name

data Light = RED | AMBER | GREEN deriving (Eq, Show) -- creates a new algebraic datatype called Light, whose possible values are RED, AMBER, and GREEN, who derives from the typeclasses Eq and Show

squares :: Floating a => [a] -> [a]
squares range = [x ** 2 | x <- range] -- this is an example of a list comprehension, whose result represents all the squares of values within a range, and these squares belong to the typeclass Floating; [0..10] is known as a range

notDivisibleByThreeAndFive :: Integral a => p -> [a]
notDivisibleByThreeAndFive range = [x | x <- [0..30], x `mod` 3 /= 0 && x `mod` 5 /= 0] -- list comprehension whose result represents all values who are not divisible by 3 and 5; SHOULD WE GO INTO DIFF BETWEEN DIV AND MOD HERE? OR MAYBE ELSEWHERE OR TELL THE READERS TO GO BACK AND RESEARCH ON THEIR OWN? 

twoToThePowerOf :: (Integral b1, Num b2) => [b1] -> [b2]
twoToThePowerOf powers = map (2^) powers -- maps what is known as a left section, or a sugared function using an infix operator that is left associative, to a list; the section takes 2 to the power of whatever value is getting mapped in the array THIS IS POORLY WORDED MAYBE GO BACK TO THIS ONE

joinPhrases :: String -> [String] -> String
joinPhrases separator phrases = intercalate separator phrases -- intercalates, or joins, all the values of the list with the connecting string " & "

capitalize :: String -> String
capitalize phrase = map toUpper phrase -- strings in Haskell are just lists of Chars, so map can be applied to it in order to convert it to all-caps

joinAndCapitalizedPhrases :: String -> [String] -> String
joinAndCapitalizedPhrases separator phrases = joinPhrases separator (map capitalize phrases) -- another example of nesting function calls 

main =
    do
        guard $ convertTuplesToListsWithValuesThatAreIncreasing [(1,2), (3,5)] == [[1,2],[3,5]]
        guard $ convertTuplesToListsWithValuesThatAreIncreasing [(1,2), (2,1)] == [[1,2]]
        guard $ curriedAdd 5 8 == add (5,8)
        guard $ tellMeAbout "NY" == "I don't know anything about NY"
        guard $ tellMeAbout "CA" == "The capital of CA is Sacramento"
        guard $ show RED == "(\"RED\")"
        guard $ show AMBER == "(\"AMBER\")"
        guard $ show GREEN == "(\"GREEN\")"
        guard $ RED == RED
        guard $ AMBER == AMBER
        guard $ GREEN == GREEN
        guard $ GREEN /= AMBER
        guard $ AMBER /= RED
        guard $ RED /= GREEN 
        guard $ squares [0..10] == [0.0,1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0,100.0]
        guard $ notDivisibleByThreeAndFive [0..30] == [1,2,4,7,8,11,13,14,16,17,19,22,23,26,28,29]
        guard $ twoToThePowerOf [3,5,8,2,1] == [8,32,256,4,2]
        guard $ joinPhrases " & " ["swim", "bike", "run"] == "swim & bike & run"
        guard $ joinAndCapitalizedPhrases "& " ["swim", "bike", "run"] == "SWIM & BIKE & RUN"
        
