(use 'clojure.test)
(use 'sum-of-even-squares)

(deftest ses-test
  (is (= (sum-of-even-squares []) 0))
  (is (= (sum-of-even-squares [7]) 0))
  (is (= (sum-of-even-squares [7 3]) 0))
  (is (= (sum-of-even-squares [7 3 2]) 4))
  (is (= (sum-of-even-squares [7 3 4 1 2 9 8]) 84)))

(run-tests)
