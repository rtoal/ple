(defn swap [a i j]
   (assoc a j (a i) i (a j)))

(defn generatePermutations [n v]
  (if (zero? n)
    (println (apply str v))

    (loop [i 0 a v]
      (if (<= i n)
        (do
          (generatePermutations (dec n) a)
          (recur (inc i) (swap a (if (even? n) i 0) n)))))))

(if (not= (count *command-line-args*) 1)
  (do
    (println "Exactly one argument is required")
    (System/exit 1))
  (let [word (-> *command-line-args* first vec)]
    (generatePermutations (dec (count word)) word)))
