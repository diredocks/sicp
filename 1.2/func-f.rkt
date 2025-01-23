#lang sicp

(define (f-rec n)
  (if (< n 3)
    n
    (+ (f-rec (- n 1))
       (* 2 (f-rec (- n 2)))
       (* 3 (f-rec (- n 3))))
  )
)

(f-rec 3)

(define (f-iter n)
  (define (iter a b c i)
    (if (= i 3)
      (+ c (* 2 b) (* 3 a))
      (iter b c (+ c (* 2 b) (* 3 a)) (- i 1))
    )
  )
  (if (< n 3)
    n
    (iter 0 1 2 n)
  )
)

(f-iter 3)
