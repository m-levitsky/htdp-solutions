;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define COST-PA 1.50) ;cost per attendee
(define PRICE-CHANGE 0.1) ;10-cent change in the ticket price
(define ATT-CHANGE 15) ;average attendance changes by 15 people
(define DEFAULT-PRICE 5.0)
(define DEFAULT-ATT 120)
(define CHANGE  (/ ATT-CHANGE PRICE-CHANGE))


(define (attendees ticket-price)
  (- DEFAULT-ATT (* (- ticket-price DEFAULT-PRICE) CHANGE)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* COST-PA (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))


(profit 3)
(profit 4)
(profit 5)