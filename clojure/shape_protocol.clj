; Shapes compute their area, and circles are a kind of shape
(defprotocol Shape
  (area [source]))

(defrecord Circle [radius]
  Shape
  (area [this] (* radius radius Math/PI)))

; Now we add a new shape, without modifying any code
(defrecord Rectangle [height width]
  Shape
  (area [this] (* height width)))

; Now add a new method, without modifying any code
(defprotocol Boundaried
  (perimeter [source]))
(extend-type Circle Boundaried
  (perimeter [this] (* 2 Math/PI (.radius this))))
(extend-type Rectangle Boundaried
  (perimeter [this] (* 2 (+ (.height this) (.width this)))))

(use 'clojure.test)
(def c (Circle. 10))
(def r (Rectangle. 2 4))
(is (= (area c) (* 100 Math/PI)))
(is (= (perimeter c) (* 20 Math/PI)))
(is (= (area r) 8))
(is (= (perimeter r) 12))
