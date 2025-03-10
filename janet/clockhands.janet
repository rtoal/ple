(loop [i :range [0 11]] 
    (var t (div (+ (* 43200 i) 21600) 11))
    (var h (div t 3600))
    (var m (% (div t 60) 60))
    (var s (% t 60))
    (printf "%02d:%02d:%02d" (if (= h 0) 12 h) m s))