(def counter (agent 0 :validator #(>= % 0)))

(dotimes [i 50000] (send counter + 1))

(println @counter)   ; Will likely be < 50000
(Thread/sleep 2000)
(println @counter)   ; Will likely be 50000
(shutdown-agents)
