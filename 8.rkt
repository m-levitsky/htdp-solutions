(require 2htdp/image)

;orirginal cat picture was replaced by random figure

(define cat (rectangle 10 20 "solid" "blue"))

(define (check img)
  (if (= (image-width img) (image-height img))
      "square"
      (if (> (image-height img) (image-width img)) "tall" "wide")))

(check cat)
