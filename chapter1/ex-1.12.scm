(define (pascal row col)
  (cond ((> col row)
         (error "invalid col value"))
        ((or (= col 1)(= row col))
         1)
        (else (+ (pascal (- row 1)(- col 1)) ;Top left element
                 (pascal (- row 1) col)))))  ;Top right element
