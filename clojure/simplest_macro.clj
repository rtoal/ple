(defn f [x] (do (println "entering f") x x))
(defmacro m [x] (do (println "entering m") x x))

(println "calling f")
(println (f (println "hello")))
(println "calling m")
(println (m (println "hello")))

