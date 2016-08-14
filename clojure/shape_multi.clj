; Shapes compute their area, and circles are a kind of shape
(defmulti area :Shape)
(defn circle [radius] {:Shape :circle :radius radius})
(defmethod area :circle [c] (* Math/PI (:radius c) (:radius c)))

; Now we add a new shape, without modifying any code
(defn rectangle [w h] {:Shape :rectangle :width w :height h})
(defmethod area :rectangle [r] (* (:height r) (:width r)))

; Now add a new method, without modifying any code
(defmulti perimeter :Shape)
(defmethod perimeter :circle [c] (* 2 Math/PI (:radius c)))
(defmethod perimeter :rectangle [r] (* 2 (+ (:height r) (:width r))))

(use 'clojure.test)
(def c (circle 10))
(def r (rectangle 2 4))
(is (= (area c) (* 100 Math/PI)))
(is (= (perimeter c) (* 20 Math/PI)))
(is (= (area r) 8))
(is (= (perimeter r) 12))
