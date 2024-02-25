#lang sicp

; Exercise 1.4: Observe that our model of evaluation allows
; for combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the
; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The if statement returns a procedure that is applied to a and b
; The procedure is either addition or substraction
;

(a-plus-abs-b 2 -3)
(a-plus-abs-b 5 0)
(a-plus-abs-b 0 -5)
