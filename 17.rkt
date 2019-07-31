;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define (check img)
  (if (= (image-width img) (image-height img))
      "square"
      (if (> (image-height img) (image-width img)) "tall" "wide")))

(define img (circle 10 "solid" "green"))
(check img) 