type VectorList = [Float] -- this represents the same type alias for a Vector, except its of type list; in practice, it makes more sense to use a list for a Vector, because lists have more operational capabilities than tuples, which can come in handy when performing vector operations, such as the dot product

dot_product :: VectorList -> VectorList -> Maybe Float
dot_product a b
           | ((length a) == (length b)) = sum (zipWith (*) a b) 
           | ((length a) /= (length b)) = Nothing

-- dot_product [[1,2,3], [4,5,6]] -- results in 32
-- dot_product [[1,2,3], [-4,5,6]] -- results in 24
-- dot_product [[], [-4,5,6]] -- results in Nothing 