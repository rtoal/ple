(use 'clojure.test)
(is (= (+ 8 7 3 2 8) 28))       ; sum a lot of numbers
(is (= (+ 8) 8))                ; yes we can sum just one
(is (= (+) 0))                  ; 0 is the identity for +
(is (< 3 5 7 9 12))             ; a convenient sort test
(is (not (<= 8 9 10 22 20 8)))
(is (= (max 8 7 14 2 8) 14))
