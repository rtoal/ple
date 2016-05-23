(defn mystery [n]
  (loop [a 0 b 1 i n]
    (if (zero? i) a (recur b (+' a b) (dec i)))))
