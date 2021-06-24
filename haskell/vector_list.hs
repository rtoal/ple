import Control.Monad (guard)

type VectorList = [Float] -- this represents the same type alias for a Vector, except its of type list; in practice, it makes more sense to use a list for a Vector, because lists have more operational capabilities than tuples, which can come in handy when performing vector operations, such as the dot product

dot_product :: VectorList -> VectorList -> Maybe Float -- since the dot product cannot be performed on two vectors that do not have the same length, this function will return a Maybe Float, since it is possible that the function returns Nothing, should the two vectors not have the same size, or length
dot_product a b
           | ((length a) == (length b)) = Just $ sum (zipWith (*) a b)  -- with lists, you can reduce two lists via zipWith into a single list by performing the same operation on values with matching indices (in this case the operation is finding the product), and then you can reduce that list down to a single value via sum
           | ((length a) /= (length b)) = Nothing 

main =
    let 
        vector0 = [1,2,3]
        vector1 = [4,5,6]
        vector2 = [6,5,4]
        vector3 = [0,1]
    in do
        guard $ dot_product vector0 vector1 == Just 32
        guard $ dot_product vector0 vector2 == Just 24
        guard $ dot_product vector3 vector2 == Nothing 

