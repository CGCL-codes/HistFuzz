(declare-fun a () Int)
(declare-fun b () Int)
(assert (<= a 1))
(assert (> (+ a b) a))
(check-sat)
