(let [counts (apply merge-with +
  (map #(frequencies (re-seq #"[a-z']+" (.toLowerCase %)))
    (line-seq (java.io.BufferedReader. *in*))))]
  (doseq [[word count] (into (sorted-map) counts)] 
    (println word count)))
