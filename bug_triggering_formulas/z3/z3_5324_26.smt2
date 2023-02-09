(declare-fun a () Real)
(declare-fun b () Real)
(assert (= (< (- a b) 0) (and false (>= a b))))
(check-sat)
