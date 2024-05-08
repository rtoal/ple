(define (fibonacci n)
  (if (< n 0)
    "Error: argument must be nonnegative"
    (let f ((a 0) (b 1) (count n))
      (if (= count 0)
        a
        (f b (+ a b) (- count 1))))))

(display (map fibonacci (iota 10 1)))
