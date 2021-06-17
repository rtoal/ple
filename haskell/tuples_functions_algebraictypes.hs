is_increasing_tuple :: (Ord a) => (a,a) -> Bool -- this is our first type signature for the function isIncreasingTuple. It gives context to the tuple argument of type, a, which belongs to the typeclass Ord (more details on this to come), and returns a boolean value 
is_increasing_tuple (x, y) = x < y -- this function compares two values within a tuple and returns a boolean

tuple_to_list :: (Ord a) => (a,a) -> [a,a]
tupleToList (x,y) = [x,y] -- this function converts a tuple to a list

convert_tuples_to_lists_if_values_are_increasing :: (Ord a) => [(a,a)] -> [(a,a)]
convert_tuples_to_lists_if_values_are_increasing [(x,y), (z,w)] = map tupleToList (filter isIncreasingTuple [(x,y), (z,w)]) -- this is an example that demonstrates nesting function calls 

-- SHOULD WE DO AN EXAMPLE WHERE THE ABOVE IS COMPOSED INSTEAD? TRIED PLAYING AROUND WITH THIS RAN INTO SOME ISSUES 

convertToListIfValuesAreIncreasing [(1,2), (3,5)] -- results in [(1,2), (3,5)]
convertToListIfValuesAreIncreasing [(1,2), (2,1)] -- results in [1,2]

add :: (Int, Int) -> Int
add (x, y) = x + y -- this is an uncurried function, which is a style less preferred by haskell programmers
add (5 + 8) -- function call to add, whose result is obviously 13

curried_add :: Int -> Int -> Int
curried_add = \x -> \y -> x + y -- this is the exact same function as add, except it represents a curried function that involves closures, more details on these concepts to come
curried_add(5 + 8) -- also results in the value 13 

[x ** 2 | x <- [0..10]] -- this is an example of a list comprehension, whose result represents all the squares of values ranging from 0 to 10, and these squares belong to the typeclass Floating; [0..10] is known as a range

[x | x <- [0..30], x `mod` 3 /= 0 && x `mod` 5 /= 0] -- list comprehension whose results represents all values who are divisible by 3 and 5; SHOULD WE GO INTO DIFF BETWEEN DIV AND MOD HERE? OR MAYBE ELSEWHERE OR TELL THE READERS TO GO BACK?

map (2^) [3,5,8,2,1] -- maps what is known as a left section, or a sugared function using an infix operator that is left associative, to a list; the section takes 2 to the power of whatever value is getting mapped in the array THIS IS POORLY WORDED MAYBE GO BACK TO THIS ONE

intercalate " & " ["swim","run","bike"] -- intercalates, or joins, all the values of the list with the connecting string " & "

map toUpper "scream" -- strings in Haskell are just lists of Chars, so map can be applied to it in order to convert it to all-caps

capitals :: [(String, String)]
capitals =
    [ ("CA", "Sacramento")
    , ("HI", "Honolulu")
    , ("WA", "Olympia")
    ] -- creates a dictionary of states and capitals 

-- NOT SURE IF THIS IS TOO COMPLEX IN THIS SET OF EXAMPLES
tellMeAbout :: String -> String
tellMeAbout state =
    case (lookup state capitals) of -- checks to see if a capital is in the dictionary via lookup, which returns a Maybe String representing a capital if it is there and Nothing if it is not (more on cases and Maybes to come)
        Just city -> "The capital of " ++ state ++ " is " ++ city -- should the Maybe contain a string, it is unwrapped to a value of type Just String (more on this later) and concatenated to the following message
        Nothing -> "I don't know anything about " ++ state -- should the Maybe contain nothing, what is returned is the following message concatenated to the state name

data Light = RED | AMBER | GREEN deriving (Eq, Show) -- creates a new algebraic datatype called Light, whose possible values are RED, AMBRE, and GREEN, whose typeclass is deriving from Eq and Show