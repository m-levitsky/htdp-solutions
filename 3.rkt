;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define str "helloworld")
(define i 5)

(define prefix (substring str 0 i))
(define suffix (substring str i))

(define (concatenate prefix suffix)
  (string-append prefix "_" suffix))

(concatenate prefix suffix)