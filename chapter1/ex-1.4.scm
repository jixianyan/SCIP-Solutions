;Defines a procedure "a plus the absolute value of b"
;The if statement returns either + or -, i.e. a plus b if b is greater than 0, otherwise a subtract b
;(a + |b|)

;e.g.
(a-plus-abs-b 6 8)
((if (> 8 0) + -) 6 8)
((if #t + - ) 6 8)
(+ 6 8)
14

(a-plus-abs-b 6 -8)
((if (> -8 0) + -) 6 -8)
((if #f + -) 6 -8)
(- 6 -8)
14
