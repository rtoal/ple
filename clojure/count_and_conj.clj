(use 'clojure.test)
(let [a-list '(1 2 3) a-vec [1 2 3] a-set #{1 2 3} a-map {1 2 3 4}]
  (is (= (count a-list) 3))
  (is (= (count a-vec) 3))
  (is (= (count a-set) 3))
  (is (= (count a-map) 2))                   ; num of key-val pairs
  (is (= (conj a-list 4) '(4 1 2 3)))        ; list: conj to front
  (is (= (conj a-vec 4) [1 2 3 4]))          ; vec: conj adds to end
  (is (= (conj a-set 4) #{3 2 1 4}))         ; order is irrelevant
  (is (= (conj a-map [5 6]) {1 2 5 6 3 4}))) ; adds a new pair
