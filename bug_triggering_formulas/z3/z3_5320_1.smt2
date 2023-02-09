(declare-fun b () Real)
(declare-fun a () Real)
(assert (and (= a (* b b)) (not (distinct (* a a) (* b b b b)))))
(check-sat)
