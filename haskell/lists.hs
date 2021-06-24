import Control.Monad (guard)

main =
    do
        guard $ null [] -- returns whether or not a given expression equates to null
        guard $ not (null [3,5,8,2,1]) -- obviously, since the array containts values, this is not considered null     
        guard $ head [3,5,8,2,1] == 3 -- takes the head of a list, which equates to the list's first value
        guard $ tail [3,5,8,2,1] == [5,8,2,1] -- takes the tail of a list, which equates to everything in the list with the exception of the head, or the first value
        guard $ 3 : [5,8,2,1] == [3,5,8,2,1] -- uses the cons operator to cons, or join, the new head of the list, which is 3, to its tail, which is [5,8,2,1]
        guard $ init [3,5,8,2,1] == [3,5,8,2] -- pops off the last value of a list
        guard $ last [3,5,8,2,1] == 1 -- takes the last value of a list
        guard $ length [3,5,8,2,1] == 5 -- finds the length of a list
        guard $ take 2 [3,5,8,2,1] == [3,5] -- take returns the first however many values you pass too it from a list in the form of a new list
        guard $ drop 2 [3,5,8,2,1] == [8,2,1] -- drop returns whatever is leftover after removing the first however many number of values you pass to it, so in this case, the first two values are dropped, or deleted
        guard $ takeWhile (\x -> x < 7) [3,5,8,2,1] == [3,5] -- adds values from an existing list to an empty one as long as a condition is satisfied, and once it's not, the new list is returned
        guard $ takeWhile (< 7) [3,5,8,2,1] == [3,5] -- demonstrates that takeWhile can take any function, including a section, which is syntactic sugar for the function seen on line 13
        guard $ dropWhile (not . even) [3,5,8,2,1] == [8,2,1] -- opposite of takeWhile
        guard $ filter (< 7) [3,5,8,2,1] == [3,5,2,1] -- filters a list based on a given function that provides some kind of condition
        guard $ filter even [1..10] == [2,4,6,8,10] -- you can filter through ranges, and even is a builtin function that checks that values are, you guessed it, even!
        guard $ map succ [3,5,8,2,1] == [4,9,6,3,2] -- maps the function succ, which implies finding the successor of a given value, to every value in a list
        guard $ map (map succ) ["abc","def"] == ["bcd","efg"] -- demonstrates that succ also works with Chars, and Strings are just lists of Chars, so you can map a function to them too
        guard $ splitAt 3 [3,5,8,2,1] == ([3,5,8],[2,1]) -- splitAt returns a tuple containing two lists, representing what was to the left and right of a given index, so in this case, at 3
        guard $ zip [1,2] ['a','b'] == [(1,'a'),(2,'b')] -- zips up the contents of two lists into tuples, whose contents had common indices
        guard $ zip [1,2,3] ['a','b'] == [(1,'a'),(2,'b')] -- zip drops any values that don't share a common index with its paired array POORLY WORDED
        guard $ concat [[3],[5,8],[],[2,1]] == [3,5,8,2,1] -- concat unions a set of lists into a single list
        guard $ concatMap (\x -> [x,-x]) [1..5] == [1,-1,2,-2,3,-3,4,-4,5,-5] -- maps a function over a list, which in this case is a range, and then concatenates that result 
        guard $ all even [3,5,8,2,1] == False -- entails whether or not a given list has all even values
        guard $ any even [3,5,8,2,1] == True -- unlike all, any just checks if any values of a given list satisfy a given condition, which in this case, is if a value is even
        guard $ sum [1..10] == 55 -- reduces a list by finding the sum of its contents
        guard $ product [1..10] == 3628800 -- reduces a list by finding the product of its contents
        guard $ foldl (-) 1 [3,5,2,8] == -17 -- reduces, or folds the list by applying the section (-), or subtract, to the values from left to right
        guard $ foldr (-) 1 [3,5,2,8] == -7 -- reduces, or folds the list by applying the section (-), or subtract, to the values from right to left