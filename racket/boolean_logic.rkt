(require rackunit)

(check-true (and))
(check-true (and #t))
(check-false (and #f))
(check-false (and #f #t))
(check-false (and #f #t #t #t #f))

(check-false (or))
(check-true (or #t))
(check-false (or #f))
(check-true (or #f #t))
(check-true (or #f #t #t #t #f))

(check-exn exn:fail? (λ () (xor)))
(check-true (xor #f #t))
(check-false (xor #t #t))
(check-exn exn:fail? (λ () (xor #t #t #t)))