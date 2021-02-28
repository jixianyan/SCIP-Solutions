(define (carmichael n)
  (test-iter 1 n))

(define (test-iter a n)
  (cond ((= a n)
         #t)
        ((congruent? a n)
         (test-iter (+ a 1) n))
        (else
         #f)))

(define (congruent? a n)
  (= (expmod a n n) a))
      
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
              (expmod base (/ exp 2) m))
           m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

> (carmichael 561)
#t
> (carmichael 1105)
#t
> (carmichael 1729)
#t
> (carmichael 2465)
#t
> (carmichael 2821)
#t
> (carmichael 6601)
#t
