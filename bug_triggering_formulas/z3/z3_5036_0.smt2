(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(assert (= (* a a) 2))
(assert (> c b))
(assert (= (* (- c a) (- c a)) 2))
(assert (> b 0))
(check-sat)
