(define (square x) (* x x))

(define (squareSum x y) (+ (square x) (square y)))

(define (sumOfTwoLargestSquared x y z)
  (cond ((and (>= (+ x y) (+ x z)) (>= (+ x y) (+ y z))) (squareSum x y))
        ((and (>= (+ x z) (+ y z)) (>= (+ x z) (+ x y))) (squareSum x z))
        (else (squareSum y z))
  )
)
