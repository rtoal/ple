(use 'clojure.test)
(let [a '(10 20 30) b #{5 15 25 35}]
  (is (some #(> % 30) b))
  (is (some (partial > 30) b))
  (is (count (filter (partial >= 20) a)) 2)
  (is (reduce * a) 6000)
  (is (= (map inc a) (seq [11 21 31])))
  (is (take 2 a) (seq [10 20]))
  (is (= (interleave a (sort b)) (seq '(10 5 20 15 30 25)))))
