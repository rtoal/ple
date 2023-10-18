main = do
    line <- getLine
    if null line
        then putStrLn "Thank you for chatting!"
        else do
            putStrLn $ "You said: " ++ line
            main
