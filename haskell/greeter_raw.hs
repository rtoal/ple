main =
    putStrLn "What is your name?" >>=
    \_ -> getLine >>=
    \name -> (putStrLn $ "Hello, " ++ name) >>=
    \_ -> putStrLn "Have a beautiful day!"
