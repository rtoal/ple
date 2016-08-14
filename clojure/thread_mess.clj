(dotimes [i 10]
  (.start (Thread. (fn [] (println (repeat i "*"))))))
