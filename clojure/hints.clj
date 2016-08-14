(defn len [x] (.length x))

(defn fast-len [^String x] (.length x))

(doseq [f [len fast-len]]
  (time (reduce + (map f (repeat 1000000 "dogs")))))
