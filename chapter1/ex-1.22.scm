(define (next-odd n)
    (if (odd? n)
        (+ 2 n)
        (+ 1 n)))

(define (square n )
  (* n n))

(define (prime? n)
    (= n (smallest-divisor n)))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n)
            n)
          ((divides? test-divisor n)
            test-divisor)
          (else
            (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
    (= (remainder b a) 0))

(define (continue-primes n count)
  (cond ((= count 0)
         (display "are primes"))
        ((prime? n)
         (display n)
         (newline)
         (continue-primes (next-odd n) (- count 1)))
        (else
         (continue-primes (next-odd n) count))))

(define (search-for-primes n)
  (let ((start-time (runtime)))
    (continue-primes n 3)
    (- (runtime) start-time)))
    
> (search-for-primes 1000)
1009
1013
1019
are primes0
> (search-for-primes 10000)
10007
10009
10037
are primes0
> (search-for-primes 100000)
100003
100019
100043
are primes0
> (search-for-primes 1000000)
1000003
1000033
1000037
are primes999
