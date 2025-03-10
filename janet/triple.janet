(loop [c :range [1 41]] 
    (loop [b :range [1 c]]
        (loop [a :range [1 b] :when (= (+ (* a a) (* b b)) (* c c))] 
            (print a ", " b ", " c))))