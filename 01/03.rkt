#lang sicp

; Exercise 1.3: Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (sos x y)
  (+ (* x x) (* y y)))

(define (sos-largest2 i j k)
  (cond ((and (< j i) (< k i) (< k j)) (sos i j)) ;i is biggest j is next
        ((and (< i j) (< k j) (< k i)) (sos j i)) ;j is biggest i is next
        ((and (< i k) (< j k) (< j i)) (sos k i)) ;k is biggest i is next
        (else (sos k j))))

(sos-largest2 3 2 1)
(sos-largest2 2 3 1)
(sos-largest2 1 3 2)
