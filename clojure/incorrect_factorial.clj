; The next line is here so fact-maybe does not crash
(defn f [x y] 10)

; This is an incorrect attempt at a tail recursive factorial
(defn fact-maybe [n]
  (let [f (fn [x a] (if (<= x 1) a (f (dec x) (*' a x))))]
    (f n 1)))

; This is the correct version
(defn fact [n]
  (letfn [(f [x a] (if (<= x 1) a (f (dec x) (*' a x))))]
    (f n 1)))

; Actually you should use loop and recur instead

(println (fact-maybe 0))
(println (fact-maybe 3))
(println (fact-maybe 7))
(println (fact-maybe 15))

(use 'clojure.test)
(is (= 1 (fact 0)))
(is (= 1 (fact 1)))
(is (= 6 (fact 3)))
(is (= 2432902008176640000 (fact 20)))
