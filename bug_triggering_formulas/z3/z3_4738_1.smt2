(declare-fun a () Int)
(declare-fun b () Bool)
(assert (> a 1))
(check-sat (or b (= a 2)))
(check-sat)
