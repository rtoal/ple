(use 'clojure.test)
(let [show (fn [x y & z] [x y z])]
  (is (= (show 1 2) [1 2 nil]))
  (is (= (show 1 2 3) [1 2 '(3)]))
  (is (= (show 1 2 3 4) [1 2 '(3 4)])))
