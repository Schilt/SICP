#lang scheme

(define ns (make-base-namespace))

(define (d s)
  (display s)
  (display " -> ")
  (eval s ns))

(d '(+ 1 2))
