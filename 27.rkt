;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define fixed-cost 180)
(define cost-pa 0.04) ;cost per attendee
(define price-change 0.1) ;10-cent change in the ticket price
(define att-change 15) ;average attendance changes by 15 people
(define defaut-price 5.0)
(define default-att 120)


(define (attendees ticket-price)
  (- default-att (* (- ticket-price defaut-price) (/ att-change price-change))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* cost-pa (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)