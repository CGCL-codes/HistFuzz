(declare-fun a () Real)
(declare-fun b (Real) Real)
(assert (distinct (b a) (/ 0 a)))
(check-sat)
