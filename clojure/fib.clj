(defn fib [n]
  (loop [a 0 b 1 result (transient [0])]
    (if (> b n)
      (persistent! result)
      (recur b (+' a b) (conj! result b)))))

(use 'clojure.test)
(is (= (fib 0) [0]))
(is (= (fib 1) [0 1 1]))
(is (= (fib 5) [0 1 1 2 3 5]))
(is (= (fib 144) [0 1 1 2 3 5 8 13 21 34 55 89 144]))
(is (= (fib 200) [0 1 1 2 3 5 8 13 21 34 55 89 144]))
(println (fib (bigint 1E200)))
