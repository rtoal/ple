main = 
    mapM_ putStrLn
        [ show a ++ ", " ++ show b ++ ", " ++ show c 
        | c <- [1..40], b <- [1..c], a <- [1..b]
        , a^2 + b^2 == c^2
        ]
