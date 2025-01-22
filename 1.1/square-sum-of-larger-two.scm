(define (square a) (* a a))
(define (sum-sqaure a b) (+ (square a) (square b)))
(define (<= a b) (not (> a b)))
(define (largest a b c)
  (cond ((and (<= c a) (<= c b)) (sum-sqaure a b))
        ((and (<= a c) (<= a b)) (sum-sqaure b c))
        ((and (<= b a) (<= b c)) (sum-sqaure a c))
  )
)
(largest 1 2 3)
