(declare-fun a () Int)
(declare-fun b () Int)
(assert (forall ((c Int)) (xor (= (* 2 a) c) (exists ((d Int)) (= (* 3 d) c)))))
(check-sat)
