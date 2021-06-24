import Control.Monad (guard)
import Data.Tuple (curry, uncurry, swap)

type VectorTuple = (Float) -- a type alias for a vector, consisting of a tuple of Floats, which collectively represent direction and magnitude 

calculateDirectionForTwoDVector :: Floating a => (a, a) -> a -- technically this is an uncurried function, becaues it takes a single argument and returns a single value rather than chaining its arguments in the form of a series of functions
calculateDirectionForTwoDVector vector = atan ((snd vector) / (fst vector)) -- you can perform the same operations that you would on a tuple on a VectorTuple, so you can take the first and second values of a VectorTuple

curriedCalculateDirectionForTwoDVector :: Floating a => a -> a -> a -- this is the curried version of the above function
curriedCalculateDirectionForTwoDVector x y = atan (y / x)

main = 
    let 
        twoDVector = (10.0,3.0)
    in do 
        guard $ calculateDirectionForTwoDVector twoDVector == 0.2914567944778671
        guard $ curry curriedCalculateDirectionForTwoDVector 10.0 3.0 == calculateDirectionForTwoDVector twoDVector
        guard $ uncurry calculateDirectionForTwoDVector twoDVector == curriedCalculateDirectionForTwoDVector 10.0 3.0
        guard $ swap twoDVector == (3,10) -- the tuple operation swap can also be applied to a VectorTuple 