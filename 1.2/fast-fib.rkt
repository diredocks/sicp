#lang sicp

; solution from https://sicp-solutions.net/post/sicp-solution-exercise-1-19/
; I should have studied linear algebra harder. QwQ

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) 
         b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))    ;compute p'
                   (+ (* 2 q p) (* q q))  ;compute q'
                   (/ count 2)))
        (else 
         (fib-iter (+ (* b q) 
                      (* a q) 
                      (* a p))
                   (+ (* b p) 
                      (* a q))
                   p
                   q
                   (- count 1)))))

(fib 1024)
