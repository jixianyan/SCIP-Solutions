;It will lead to an infinite recursion until stack overflow.

;According to page 24 of the book,
;the if statement is a special form in which the then-clause branch is evaluated when its predicate part is true,
;and the else-clause branch is evaluated otherwise,
;with only one of the two clauses being evaluated.

;On the other hand,
;the newly defined new-if function is just a normal function,
;it does not have the special form that if statement has,
;and according to the applicative-order evaluation rules used by the interpreter,
;the actual arguments of each function are evaluated when they are passed in,
;so when using the new-if function,
;regardless of whether the predicate is true or false,
;the then-clause and else-clause branches are evaluated.
