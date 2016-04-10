(dotimes [i 10]
  (->> (Thread. (fn [] (println (repeat i "*")))) .start))
