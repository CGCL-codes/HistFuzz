(declare-const i6 Int)
(assert (not (exists ((q7 Int)) (not (<= q7 i6)))))
(check-sat)
