(loop for c from 1 to 40
  do (loop for b from 1 below c
    do (loop for a from 1 below b
      when (= (+ (* b b) (* a a)) (* c c))
        do (princ (format nil "~A, ~A, ~A~%" a b c)))))
