(ns library)           ; Going to work in this ns

(def x 5)              ; Map symbol x to a Var
(defn average [x y]    ; Map symbol average to a Var
  (/ (+ x y) 2))       ; Local x and y are not Vars
(def x 8)              ; Vars are mutable!

(ns application)       ; Switch to new namespace

(use 'clojure.test)    ; No need to say clojure.test/is
(is (= library/x 8))
(is (= (library/average 10 20) 15))

(use 'library)         ; No need to say library/x now
(is (= x 8))           ; this is x from library

