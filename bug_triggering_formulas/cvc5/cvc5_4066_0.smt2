(declare-fun a () Real)
(declare-fun b () Real)
(assert (or (> (* 192 b) (- 231 a))))
(check-sat)
