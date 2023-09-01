(use 'clojure.test)
(is (= (+ 0.1 0.2) 0.30000000000000004))
(is (= (type (/ 3 10)) clojure.lang.Ratio))
(is (= (numerator (/ 3 10)) 3))
