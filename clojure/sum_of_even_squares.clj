(ns sum-of-even-squares)

(defn sum-of-even-squares [a]
  (->> a (filter even?) (map #(* % %)) (reduce +)))
