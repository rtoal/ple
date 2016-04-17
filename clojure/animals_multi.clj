(defmulti sound :Animal)
(defn speak [animal]
  (str (:name animal) " says " (sound animal)))

(defn horse [name] {:Animal :horse :name name})
(defmethod sound :horse [h] "neigh")

(defn cow [name] {:Animal :cow :name name})
(defmethod sound :cow [c] "moooo")

(defn sheep [name] {:Animal :sheep :name name})
(defmethod sound :sheep [s] "baaaa")

(use 'clojure.test)
(def h (horse "CJ"))
(is (= (speak h) "CJ says neigh"))
(def c (cow "Bessie"))
(is (= (speak c) "Bessie says moooo"))
(is (= (speak (sheep "Little Lamb")) "Little Lamb says baaaa"))

; Add a new kind of animal
(defn dog [name] {:Animal :dog :name name})

; Add a new method
(defmulti emoji :Animal)
(defmethod emoji :horse [h] "\uD83D\uDC0E")
(defmethod emoji :cow [c] "\uD83D\uDC04")
(defmethod emoji :sheep [s] "\uD83D\uDC11")
(defmethod emoji :dog [d] "\uD83D\uDC15")
(doseq [a [h c (sheep "Wooly") (dog "Spike")]] (println (emoji a)))
