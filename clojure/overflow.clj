(use 'clojure.test)
(let [x (long 1E15) max-long Long/MAX_VALUE]
  (is (thrown? ArithmeticException (* x x)))
  (is (= (*' x x) (bigint 1E30)))
  (is (thrown? ArithmeticException (inc max-long)))
  (is (= (inc' max-long) (+' 1 max-long))))
