#lang sicp

(define (pascal-triangle row col)
  (cond 
    ((= row col) 1)
    ((= col 1) 1)
    (else
      (+ (pascal-triangle (- row 1) col)
        (pascal-triangle (- row 1) (- col 1))
      )
    )
  )
)

(pascal-triangle 3 2) ; num of line 3, col 2
