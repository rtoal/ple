quickSort :: (Ord a) => [a] -> [a]
quickSort []     = []
quickSort (x:xs) = quickSort [a | a <- xs, a < x]
                   ++ [x] ++
                   quickSort [a | a <- xs, a >= x]

main =
  print $ (quickSort [5,3,4,1,2,6] == [1..6]) || error("fail")
