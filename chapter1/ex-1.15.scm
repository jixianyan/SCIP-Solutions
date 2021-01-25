;The expression (sine 12.15) will be expanded by the interpreter as follows.
(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.15)))
(p (p (p (sine 0.45))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine 0.05))))))
(p (p (p (p (p 0.05)))))

;a) We can see that the procedure p is applied 5 times.
;b) Time complexity: Оlog(a)
;   Space complexity: Оlog(a)
