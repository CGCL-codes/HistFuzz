(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c (Real) Real)
(assert (= (- a b) 1))
(check-sat (distinct 0 (c 2)))
(check-sat)
