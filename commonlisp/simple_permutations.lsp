(defun permutations (lst)
  (if (endp lst)
    (list nil)
    (loop for item in lst
      append (mapcar (lambda (p) (cons item p))
        (permutations (remove item lst :test #'equal))))))

(print (permutations '(X Y Z)))
