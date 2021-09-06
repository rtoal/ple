isIncreasingTuple :: (Ord a) => (a, a) -> Bool
isIncreasingTuple (x, y) = x < y

advance :: (Eq a, Bounded a, Enum a) => a -> a
advance x = if x == maxBound then minBound else succ x

thirdOf :: Fractional a => a -> a
thirdOf x = x / 3

readAndShow :: (Read a, Show b) => (String, b) -> (a, String)
readAndShow (x, y) = (read x, show y)

second :: (Foldable t, Eq a, Num a) => t a -> Bool
second sequence = elem 1 sequence

main = putStrLn("Everything compiles")
