(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(assert (forall ((d Real)) (= (> a (sin c)) (> d b))))
(check-sat)
