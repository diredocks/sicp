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

(define (expt-fast-rec x n)
  (cond
    ((= n 0) 1)
    ((even? n) (square (expt-fast-rec x (/ n 2))))
    (else (* x (expt-fast-rec x (- n 1))))
  )
)

(define (expt-fast-iter x n)
  (define (iter x n p)
    (cond
      ((= n 0) p)
      ((even? n) (iter (square x) (/ n 2) p)) ; keep squaring x if even
      (else (iter x (- n 1) (* x p))) ; isolate the odd element
    )
  )
  (iter x n 1)
)

(expt-rec 2 10)
(expt-iter 2 10)
(expt-fast-rec 2 10)
(expt-fast-iter 2 10)
