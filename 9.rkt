;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;create an expression that converts the value of in to a positive number

(define in #true)

;image area
(define (area x)
  (* (image-width x) (image-height x)))

;decrements the number by 1, unless it is already 0 or negative
(define (decrement x)
  (if (<= x 0) x
      (- x 1))) 

(define new-in (if (string? in) (string-length in)
               (if (image? in) (area in)
                   (if (number? in) (decrement in)
                       (if (false? in) 20
                           10)))))