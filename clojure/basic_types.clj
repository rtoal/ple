(assert (= (type 3) Long))
(assert (= (type 5.0) Double))
(assert (= (type (/ 3 9)) clojure.lang.Ratio))
(assert (= (type 5N) clojure.lang.BigInt))
(assert (= (type 5.88M) BigDecimal))
(assert (= (type 'dog) clojure.lang.Symbol))
(assert (= (type :dog) clojure.lang.Keyword))

