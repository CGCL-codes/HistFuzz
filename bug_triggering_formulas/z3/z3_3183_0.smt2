(declare-fun a () Int)
(declare-fun b () Int)
(assert (= (div a (- 2 b)) 2))
(check-sat)
