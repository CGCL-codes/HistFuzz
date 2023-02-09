(declare-fun a () String)
(declare-fun b () Int)
(assert (= (int.to.str b) (str.++ a "0")))
(check-sat)
