(def a (list (repeat 100 :dog)))
(def b (conj a :cat))

(use 'clojure.test)
(is (identical? a (rest b)))
