;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define s "Hello world")
(define last-1string (- (string-length s) 1))

(define (string-last s)
  (if (= (string-length s) 0) "error"
      (string-ith s last-1string)))

(string-last s)