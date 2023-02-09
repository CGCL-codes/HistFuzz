(declare-fun y () list)
(assert (distinct x (cons 0 y)))
(assert (= x y))
(check-sat)
