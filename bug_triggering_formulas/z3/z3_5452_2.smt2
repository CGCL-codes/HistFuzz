(declare-fun b () Real)
(declare-fun a () Real)
(assert (and (> a b) (< 0.0 (- 1 b b))))
(check-sat)
