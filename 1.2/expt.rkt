#lang sicp

(define (square x) (* x x))

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

(define (expt-fast x n)
  (cond
    ((= n 0) 1)
    ((even? n) (square (expt-fast x (/ n 2))))
    (else (* x (expt-fast x (- n 1))))
  )
)

(expt-rec 4 2)
(expt-iter 4 2)
(expt-fast 4 2)
