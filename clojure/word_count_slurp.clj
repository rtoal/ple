(let [counts (->> *in* slurp .toLowerCase (re-seq #"[a-z']+") frequencies)]
  (doseq [[word count] (into (sorted-map) counts)]
    (println word count)))
