main =
    putStrLn "What is your name?" >>
    getLine >>=
    \name -> (putStrLn $ "Hello, " ++ name) >>
    putStrLn "Have a beautiful day!"
