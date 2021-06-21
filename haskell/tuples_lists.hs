module Data.Tuple
  ( fst
  , snd
  , curry
  , uncurry
  , swap
  ) where 

-- there isn't a whole lot you can do with tuples, this import statement represents the entirety of the Data.Tuple module

-- fst :: (a,b) -> a
-- fst (x,_) =  x -- this takes the first value of a tuple

-- snd :: (a,b) -> b
-- snd (_,y) =  y -- this takes the second value of a tuple

-- curry :: ((a, b) -> c) -> a -> b -> c
-- curry f x y =  f (x, y) -- this converts an uncurried function into a curried one

-- uncurry :: (a -> b -> c) -> ((a, b) -> c)
-- uncurry f p =  f (fst p) (snd p) -- this converts a curried function into an uncurried function acting on arguments of pairs

-- swap :: (a,b) -> (b,a)
-- swap (a,b) = (b,a) -- this swaps the values of a tuple

type VectorTuple = (Float) -- a type alias for a vector, consisting of a tuple of Floats, which collectively represent direction and magnitude 

type VectorList = [Float] -- this represents the same type alias for a Vector, except its of type list; in practice, it makes more sense to use a list for a Vector, because lists have more operational capabilities than tuples, which can come in handy when performing vector operations, such as the dot product

dot_product :: VectorList -> VectorList -> Maybe Float
dot_product a b
           | ((length a) == (length b)) = sum (zipWith (*) a b) 
           | ((length a) /= (length b)) = Nothing

-- dot_product [[1,2,3], [4,5,6]] -- results in 32
-- dot_product [[1,2,3], [-4,5,6]] -- results in 24
-- dot_product [[], [-4,5,6]] -- results in Nothing 

null []                              --  True
null [3,5,8,2,1]                     --  False
head [3,5,8,2,1]                     --  3
tail [3,5,8,2,1]                     --  [5,8,2,1]
init [3,5,8,2,1]                     --  [3,5,8,2]
last [3,5,8,2,1]                     --  1
length [3,5,8,2,1]                   --  5

take 2 [3,5,8,2,1]                   --  [3,5]
drop 2 [3,5,8,2,1]                   --  [8,2,1]
takeWhile (\x -> x < 7) [3,5,8,2,1]  --  [3,5]
takeWhile (< 7) [3,5,8,2,1]          --  [3,5]
dropWhile (not . even) [3,5,8,2,1]   --  [8,2,1]
filter (< 7) [3,5,8,2,1]             --  [3,5,2,1]
filter even [1..10]                  --  [2,4,6,8,10]

map succ [3,5,8,2,1]                 --  [4,9,6,3,2]
map (2^) [3,5,8,2,1]                 --  [8,32,256,4,2]

splitAt 3 [3,5,8,2,1]                --  ([3,5,8],[2,1])
zip [1,2] ['a','b']                  --  [(1,'a'),(2,'b')]

concat [[3],[5,8],[],[2,1]]          --  [3,5,8,2,1]
concatMap (\x -> [x,-x]) [1..5]      --  [1,-1,2,-2,3,-3,4,-4,5,-5]
all even [3,5,8,2,1]                 --  False
any even [3,5,8,2,1]                 --  True
sum [1..10]                          --  55
product [1..10]                      --  3628800

foldl (-) 1 [3,5,2,8]                --  -17
foldr (-) 1 [3,5,2,8]                --  -7
