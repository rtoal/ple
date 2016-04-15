; Don't ever do this! Vars are not thread safe

(def x 0)
(def latch (java.util.concurrent.CountDownLatch. 10))
(dotimes [i 10]
  (.start (Thread. (fn []
    (dotimes [j 10] (def x (+ x 1)))
    (.countDown latch)))))
(.await latch)
(println "BAD" x)

(def y 0)
(def lock (Object.))
(def newlatch (java.util.concurrent.CountDownLatch. 10))
(dotimes [i 10]
  (.start (Thread. (fn []
    (dotimes [j 10] (locking lock (def y (+ y 1))))
    (.countDown newlatch)))))
(.await newlatch)
(println "GOOD" y)
