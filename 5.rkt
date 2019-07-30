;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;line draws from (0,0) to (x1,y1)
(define x1 0)
(define y1 25)

;pen width
(define width 15)

;star parameters
(define side-length 20)
(define side-count 15)
(define step-count 2)

(define body (line x1 y1 (make-pen "brown" width "solid" "round" "bevel"))) 
(define top (star-polygon side-length side-count step-count "solid" "seagreen"))

(define tree (above/align "middle"
                            top
                            body))

tree