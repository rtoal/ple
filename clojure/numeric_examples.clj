(use 'clojure.test)
(def x (long 1E15))
(is (thrown? ArithmeticException (* x x)))
(is (= (*' x x) (bigint 1E30)))

(is (= (type (int 3)) Integer))
(is (= (type (/ 3 9)) clojure.lang.Ratio))
(is (= (type (/ 8 4)) Long))
(is (= (type (/ 3.0 9)) Double))
