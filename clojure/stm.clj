(use 'clojure.test)

(def savings (ref 10000))
(def checking (ref 500))

(is (and (= @savings 10000) (= @checking 500)))

(dosync
  (let [amount 100]
    (alter savings - amount)     ; alter savings by subtracting amount
    (alter checking + amount)))  ; alter checking by adding amount

(is (and (= @savings 9900) (= @checking 600)))
