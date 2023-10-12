(defn swap [a i j]
  (assoc a j (a i) i (a j)))

(defn print-permutations [v n]
  (if (zero? n)
    (do (println (clojure.string/join "\t" v)) v)
    (loop [i 0 a v]
      (if (< i n)
        (let [a (print-permutations a (dec n))]
          (recur (inc i) (swap a (if (even? n) 0 i) n)))
        (print-permutations a (dec n))))))

(print-permutations
  (vec *command-line-args*)
  (dec (count *command-line-args*)))
