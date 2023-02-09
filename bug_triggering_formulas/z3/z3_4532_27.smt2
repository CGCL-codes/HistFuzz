(declare-fun a () Int)
(declare-fun b () Int)
(assert (and (or (= a 9) (= a 0)) (not (= 0 b))))
(check-sat)
