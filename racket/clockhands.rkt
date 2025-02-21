(define (clockhands i)
  (define t (floor (/ (+ (* 43200 i) 21600) 11)))
  (define-values (h m s) 
    (values (floor (/ t 3600)) 
    (remainder (floor (/ t 60)) 60) 
    (remainder t 60)))
  (printf "~a:~a:~a~n" 
    (~a (if (= h 0) 12 h) #:width 2 #:align 'right #:left-pad-string "0") 
    (~a m #:width 2 #:align 'right #:left-pad-string "0") 
    (~a s #:width 2 #:align 'right #:left-pad-string "0"))
  (when (< i 10) (clockhands (+ i 1))))

(clockhands 0)