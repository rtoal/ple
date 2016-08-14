(use 'clojure.test)
(let
  [average (fn [x y] (/ (+ x y) 2))]
  (is (= (average 9 5) 7)))
(let
  [average #(/ (+ %1 %2) 2)]
  (is (= (average 9 5) 7)))
