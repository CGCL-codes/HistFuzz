(declare-const a Int)
(assert (> a 0))
(assert (= (< a 0) false))
(check-sat)
