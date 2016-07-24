quickSort :: Ord a => [a] -> [a]
quickSort []     = []
quickSort (x:xs) = quickSort [a | a <- xs, a < x]
                   ++ [x] ++
                   quickSort [a | a <- xs, a >= x]

main = do
  print([1,2,3,4,5])
  putStrLn("There")
