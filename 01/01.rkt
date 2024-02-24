#lang scheme

; SICP Exercise 1.01:
; Below is a sequence of expressions. What is the result printed by the
; interpreter in response to each expression? Assume that the sequence is to be
; evaluated in the order in which it is presented.

(define ns (make-base-namespace))

(define (d s)
  (display s)
  (display " -> ")
  (define es (eval s ns))
  (display es)
  (newline))

(d '10)
(d '(+ 5 3 4))
(d '(- 9 1))
(d '(/ 6 2))
(d '(+ (* 2 4) (- 4 6)))
(d '(define a 3))
(d '(define b (+ a 1)))
(d '(+ a b (* a b)))
(d '(= a b))
(d '(if (and (> b a) (< b (* a b)))
        b
        a))
(d '(cond ((= a 4) 6)
          ((= b 4) (+ 6 7 a))
          (else 25)))
(d '(+ 2 (if (> b a) b a)))
(d '(* (cond ((> a b) a)
             ((< a b) b)
             (else -1))
       (+ a 1)))
