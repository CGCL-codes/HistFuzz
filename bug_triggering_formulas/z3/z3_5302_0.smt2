(declare-const a Int)
(declare-const b Int)
(assert (<= (* a a) 1))
(assert (>= (mod (* a a) a) 1 b))
(check-sat)
