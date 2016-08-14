(defmacro or
  ([] nil)
  ([x] x)
  ([x & next]
    `(let [or# ~x]
      (if or# or# (or ~@next)))))
