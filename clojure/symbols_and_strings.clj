(use 'clojure.test)
(is (= (type 'dog) clojure.lang.Symbol))
(is (= (type "dog") String))
(println "All tests passed")