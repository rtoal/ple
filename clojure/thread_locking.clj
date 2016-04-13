(dotimes [i 10]
  (.start (Thread. (fn []
    (locking *out* (println (repeat i "*")))))))
