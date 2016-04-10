(ns physics)
(defn energy [m]
  (let [c 299792458] (* m c c)))

(ns food)
(defn energy [grams component]
  (let [density {:fat 37, :carb 17, :protein 17, :fiber 8}]
    (* grams (density component))))

(ns user)
(println (food/energy 100 :protein))
(println (physics/energy 100))
(use 'food)
(println (energy 5 :fat))
