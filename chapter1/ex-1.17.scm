(define (fast-multi a b)
  (cond ((= b 0)
         0)
        ((even? b)
         (double (fast-multi a (halve b))))
        (else
         (+ a (fast-multi a (- b 1 ))))))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))
