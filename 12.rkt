;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (cube x)
  (* x (sqr x)))

(define (cvolume a)
  (cube a))

(define (csurface a)
  (* 6 (sqr a)))

(cvolume 5)
(csurface 5)