(use 'clojure.test)
(def x 100)                        ; create a Var, map x to it
(def y #'x)                        ; the actual Var that x maps to
(is (= (type y) clojure.lang.Var)) ; the Var is an object with a type
(is (= (deref y) 100))             ; deref is the value in the Var
(is (= @y 100))                    ; @y is shorthand for (deref y)
(def x 200)                        ; Update the var through the symbol
(is (= (deref y) 200))             ; See the change directly
(is (identical? #'x (var x)))      ; #'x is shorthand for (var x)
