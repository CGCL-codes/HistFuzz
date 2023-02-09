(declare-const b Int)
(declare-const c Int)
(assert (or (= (- b c) 2) (= b 3)))
(check-sat)
