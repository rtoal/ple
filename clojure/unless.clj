(ns one)

(defmacro unless [condition this that]
  (list 'if (list 'not condition) this that))

(use 'clojure.test)
(is (= (unless (< 1 2) 10 7) 7))
(is (= (unless (< 2 1) 10 7) 10))
(is (= (macroexpand '(unless (< 1 2) 10 7))
    '(if (not (< 1 2)) 10 7)))

(ns two)

(defmacro unless [condition this that]
  `(if (not ~condition) ~this ~that))

(use 'clojure.test)
(is (= (unless (< 1 2) 10 7) 7))
(is (= (unless (< 2 1) 10 7) 10))
(is (= (macroexpand '(unless (< 1 2) 10 7))
    '(if (clojure.core/not (< 1 2)) 10 7)))
