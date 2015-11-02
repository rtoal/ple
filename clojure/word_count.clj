(let [counts (apply merge-with +
  (map #(->> % .toLowerCase (re-seq #"[a-z']+") frequencies)
    (line-seq (java.io.BufferedReader. *in*))))]
  (doseq [[word count] (into (sorted-map) counts)] 
    (println word count)))
