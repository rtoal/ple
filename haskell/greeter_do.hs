main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn $ "Hello, " ++ name
    putStrLn "Have a beautiful day!"
