;Applicative-order: evaluate the arguments and then apply. This model of evaluation starts by not finding the values of the operator objects until their values are actually needed. The formal arguments are first replaced by the operator expressions until an expression containing only the basic operators is obtained, and then the evaluation is performed.
;Normal-order: fully expand and then reduce. The interpreter will first evaluate each element of the combinatorial formula, i.e., replace each formal parameter in the procedure body with a real parameter, and then evaluate this procedure body.

;Using applicative-order evaluation, the evaluation of (test 0 (p)) never terminates, because (p) is infinitely expanded itself:
(test 0 (p))
(test 0 (p))
(test 0 (p))
... and so on.
 
;Using normal-order evaluation, the expression evaluates, step by step, to 0:
(test 0 (p))
(if (= 0 0)
    0 
    (p))
(if #t 0 (p))
0
