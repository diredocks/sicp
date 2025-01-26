#lang sicp

(define (accumulate-rec
          combiner null-value
          term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate-rec
                combiner null-value
                term (next a) next b)))
)

(define (sum-rec term a next b)
  (if (> a b)
    0
    (+ a
       (sum-rec term (next a) next b))
  )
)
(sum-rec identity 1 inc 10)
(accumulate-rec + 0 identity 1 inc 10)

(define (product-rec term a next b)
  (if (> a b)
    1
    (* (term a)
      (product-rec term (next a) next b))
  )
)
(product-rec identity 1 inc 10)
(accumulate-rec * 1 identity 1 inc 10)

(define (accumulate-iter
          combiner null-value
          term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (combiner (term a) result)))
  )
  (iter a null-value)
)

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (+ (term a) result)))
  )
  (iter a 0)
)
(sum-iter identity 1 inc 10)
(accumulate-iter + 0 identity 1 inc 10)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (* (term a) result)))
  )
  (iter a 1)
)
(product-iter identity 1 inc 10)
(accumulate-iter * 1 identity 1 inc 10)

(define (filtered-accumulate
          filter? combiner null-value
          term a next b)
  (define (iter a result)
    (if (> a b) result
        (iter (next a)
              (combiner (if (filter? a) (term a) null-value) result))
    ))
  (iter a null-value)
)

(filtered-accumulate odd? + 0 identity 1 inc 5)
