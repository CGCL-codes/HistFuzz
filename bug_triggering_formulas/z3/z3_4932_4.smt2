(declare-fun a () Int)
(declare-fun b (Int) Bool)
(declare-fun c (Int) Bool)
(assert (c a))
(assert (= (b 0) (c 0)))
(assert (b (mod a 2)))
(check-sat)
