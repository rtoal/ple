(require rackunit)

(define (sum-of-even-squares a) (apply + (map sqr (filter even? a))))

(check-equal? (sum-of-even-squares (list)) 0 "Assertion Failed: SES produced wrong number")
(check-equal? (sum-of-even-squares (list 1)) 0 "Assertion Failed: SES produced wrong number")
(check-equal? (sum-of-even-squares (list 1 2)) 4 "Assertion Failed: SES produced wrong number")
(check-equal? (sum-of-even-squares (list 1 2 3)) 4 "Assertion Failed: SES produced wrong number")
(check-equal? (sum-of-even-squares (list 1 2 3 4)) 20 "Assertion Failed: SES produced wrong number")
(check-equal? (sum-of-even-squares (list 4 6 7 2)) 56 "Assertion Failed: SES produced wrong number")
