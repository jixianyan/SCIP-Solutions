;The absolute tolerance of 0.001 is significantly large when computing the square root of a small value.
;For example, on the system I am using,
;(sqrt 0.0001) yields 0.03230844833048122 instead of the expected 0.01 (an error of over 200%).

;On the other hand, for particularly large numbers,
;sqrt gets stuck in a dead loop and fails to produce the correct result
;because the decimal precision of the mit-scheme implementation is not sufficient to represent the difference between two large numbers.

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                          x)))
                          
(define (improve guess x)
  (average guess (/ x guess)))
  
(define (average x y)
  (/ (+ x y) 2))
  
(define (square x)
  (* x x))
  
(define (good-enough? guess x)          ;Instead of detecting the difference between the square of guess and x,
  (< (abs (- (improve guess x) guess))  ;we detect the difference between the old and new guesses and 0.001 times the old guess.
     (abs (* guess 0.001))))
     
(define (sqrt x)
  (sqrt-iter 1.0 x))
