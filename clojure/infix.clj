(defmacro eval-infix [form]
  (list (second form) (first form) (second (rest form))))

(use 'clojure.test)
(is (= (eval-infix (20 * 7)) 140))
(is (= (macroexpand '(eval-infix (20 * 7)))
    '(* 20 7)))
