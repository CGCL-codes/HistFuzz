(declare-fun a () Int)
(declare-fun b (Int) Bool)
(declare-fun c (Int) Bool)
(push)
(assert (or (= a 0) (b 0)))
(assert (c 0))
(assert (not (c a)))
(check-sat)
