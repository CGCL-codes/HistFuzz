(declare-fun a () Real)
(declare-fun b (Real Real) Real)
(assert (> (b a 0) (b (- a) 1)))
(check-sat)
