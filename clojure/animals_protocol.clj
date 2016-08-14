(defprotocol Sounder
  (sound [sound-maker]))

(defrecord Horse [name] Sounder
  (sound [this] "neigh"))
(defrecord Cow [name] Sounder
  (sound [this] "moooo"))
(defrecord Sheep [name] Sounder
  (sound [this] "baaaa"))

(defn speak [animal]
  (str (.name animal) " says " (sound animal)))

(use 'clojure.test)
(def h (Horse. "CJ"))
(is (= (speak h) "CJ says neigh"))
(def c (Cow. "Bessie"))
(is (= (speak c) "Bessie says moooo"))
(is (= (speak (Sheep. "Little Lamb")) "Little Lamb says baaaa"))

(is (= (type h) user.Horse))
(is (= (type Horse) java.lang.Class))

; Add a new class
(defrecord Dog [name] Sounder
  (sound [this] "woof"))

; Add new functionality
(defprotocol EmojiDescribable (emoji [this]))
(extend-type Horse EmojiDescribable (emoji [this] "\uD83D\uDC0E"))
(extend-type Cow EmojiDescribable (emoji [this] "\uD83D\uDC04"))
(extend-type Sheep EmojiDescribable (emoji [this] "\uD83D\uDC11"))
(extend-type Dog EmojiDescribable (emoji [this] "\uD83D\uDC15"))

(println (emoji h))
(println (emoji c))
(println (emoji (Sheep. "Woolie")))
(println (emoji (Dog. "Spike")))
