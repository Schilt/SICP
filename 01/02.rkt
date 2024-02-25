#lang sicp

; Exercise 1.2 of SICP
; Translate the following expression into prefix

(/ (+ 5 4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))
