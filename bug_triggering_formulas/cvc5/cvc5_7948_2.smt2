(declare-fun a () Real)
(declare-fun b () Real)
(assert (and (= a 0) (= b (cos a))))
(check-sat)
