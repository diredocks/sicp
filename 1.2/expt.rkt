#lang sicp

(define (expt-rec x n)
  (if (= n 0)
    1
    (* x (expt-rec x (- n 1)))
  )
)

(define (expt-iter x n)
  (define (iter x n p)
    (if (= n 0)
      p
      (iter x (- n 1) (* x p))
    )
  )
  (iter x n 1)
)

(expt-rec 4 2)
(expt-iter 4 2)
