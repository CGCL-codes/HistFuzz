(declare-fun a () Int)
(declare-fun b () Int)
(assert (= (div 0 a) b))
(check-sat)
