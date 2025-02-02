(for* ([c (in-range 1 41)]
  [b (in-range 1 c)]
  [a (in-range 1 b)]
  #:when (= (+ (sqr a) (sqr b)) (sqr c)))
  (printf "~v, ~v, ~v~n" a b c))