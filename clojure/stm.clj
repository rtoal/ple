(def savings (ref 10000))
(def checking (ref 500))

(assert (and (= @savings 10000) (= @checking 500)))

;(alter savings 200)

(dosync
  (let [amount 100]
    (alter savings - amount)
    (alter checking + amount)))

(assert (and (= @savings 9900) (= @checking 600)))
