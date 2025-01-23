#lang sicp

(define (double a) (+ a a))
(define (halve a) (/ a 2))

(define (mult-rec a b)
  (cond
    ((= b 0) 0)
    ((even? b) (mult-rec (double a) (halve b)))
    (else (+ a (mult-rec a (- b 1))))
  )
)

(define (mult-iter a b)
  (define (iter a b s)
    (cond
      ((= b 0) s)
      ((even? b) (iter (double a) (halve b) s))
      (else (iter a (- b 1) (+ a s)))
    )
  )
  (iter a b 0)
)

(mult-rec 2 3)
(mult-iter 8 9)
