;; (let [counts (apply merge-with +
;;   (map #(->> % .toLowerCase (re-seq #"[a-z']+") frequencies)
;;     (line-seq (java.io.BufferedReader. *in*))))]
;;   (doseq [[word count] (into (sorted-map) counts)] 
;;     (println word count)))

(let [counts (apply merge-with + (->> 
  (line-seq (java.io.BufferedReader. *in*))
  (map #(->> % .toLowerCase (re-seq #"[a-z']+") frequencies))))]
  (doseq [[word count] (into (sorted-map) counts)] 
    (println word count)))
