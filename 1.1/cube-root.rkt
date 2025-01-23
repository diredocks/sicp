#lang sicp

(define (square a) (* a a))

(define (one-third x y) 
  (/ (+ x y) 3))

(define (improve guess x)
  (one-third (/ x (square guess)) (* 2 guess)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube x)
  (cube-iter 1.0 x))

(cube 4096)
