(defrecord Player [team name games ppg])

(defn from-line [[team name games points]]
  (let [points (parse-double points)
        games (parse-long games)]
    (->Player team name games (/ points games))))

(defn player-report [player]
  (format "%-22s%-4s%8.2f" 
          (:name player) (:team player) (:ppg player)))

(dorun 
  (->> 
    (line-seq (java.io.BufferedReader. *in*))
    (map #(clojure.string/split % #","))
    (map from-line)
    (filter #(>= (:games %) 15))
    (sort-by :ppg >)
    (take 10)
    (map player-report)
    (map println)))
