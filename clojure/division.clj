(use 'clojure.test)
(is (= (type (/ 3 9)) clojure.lang.Ratio))
(is (= (type (/ 8 4)) Long))
(is (= (type (/ 3.0 9)) Double))
