(def a (list (repeat 1000 :dog)))   ; 1000-dog list
(def b (conj a :cat))               ; new list, cat at front

(use 'clojure.test)
(is (identical? a (rest b)))
(is (= (type a) clojure.lang.PersistentList))
