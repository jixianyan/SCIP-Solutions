;Recursive procedure:
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (- n 2))
                 (* 3 (- n 3))))))
                 
;Iterative procedure:
(define (f2 n)
    (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
    (if (= i n)
        c
        (f-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (+ i 1)
                n)))
