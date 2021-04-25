import Control.Monad (guard)

data Tree a
    = Empty
    | Node a [Tree a]

size :: Tree a -> Int
size Empty = 0
size (Node _ children) = 1 + (sum $ map size children)

instance (Show a) => Show (Tree a) where
    show Empty = "()"
    show (Node value children) = 
        "(" ++ show value ++ (foldr (++) "" $ map show children) ++ ")"

main =
    let
        t0 = Empty
        t1 = Node "dog" []
        t2 = Node 17 [Node 31 [], Node 53 []]
        t3 = Node 21 [t2, t2, Empty, Node 3 []]
    in do
        guard $ size t0 == 0
        guard $ size t1 == 1
        guard $ size t3 == 8
        guard $ show (t0::Tree Int) == "()"
        guard $ show t1 == "(\"dog\")"
        guard $ show t2 == "(17(31)(53))"
        guard $ show t3 == "(21(17(31)(53))(17(31)(53))()(3))"
