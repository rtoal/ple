(defun triples (n)
  (loop for c from 1 to n
    append (loop for b from 1 below c
      append (loop for a from 1 below b
        when (= (+ (* b b) (* a a)) (* c c))
          collect (list a b c)))))

(print (triples 40))
