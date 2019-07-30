(require 2htdp/image)

(define cat **insert cat image here**)

(define (pixel-count img)
  (* (image-width img) (image-height img)))

(pixel-count cat)
