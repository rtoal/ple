(doseq [i (range 0 11)]
  (let [
    p (int (/ (* (+ i 0.5) 43200.0) 11))
    h (quot p 3600)
    m (rem p 3600)]
    (printf "%02d:%02d:%02d\n" (if (zero? h) 12 h) (quot m 60) (rem m 60))))