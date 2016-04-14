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
(def s (horse "CJ"))
(is (= (speak s) "CJ says neigh"))
(def c (cow "Bessie"))
(is (= (speak c) "Bessie says moooo"))
(is (= (speak (sheep "Little Lamb")) "Little Lamb says baaaa"))
