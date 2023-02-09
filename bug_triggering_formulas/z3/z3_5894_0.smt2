(declare-const a Int)
(declare-const b Int)
(assert (> (- b) (* b b)))
(check-sat)
