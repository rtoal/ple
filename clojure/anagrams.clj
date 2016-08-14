(defn swap [a i j]
  (assoc a j (a i) i (a j)))

(defn generatePermutations [v n]
  (if (zero? n)
    (do (println (apply str v)) v)

    (loop [i 0 a v]
      (if (< i n)
        (do
          (let [a (generatePermutations a (dec n))]
          (recur (inc i) (swap a (if (even? n) 0 i) n))))
        (generatePermutations a (dec n))))))

(if (not= (count *command-line-args*) 1)
  (do
    (println "Exactly one argument is required")
    (System/exit 1))
  (let [word (->> *command-line-args* first vec)]
    (generatePermutations word (dec (count word)))))
