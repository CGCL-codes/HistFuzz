(declare-fun a () String)
(declare-fun b () Int)
(assert (= (str.replace "A" (int.to.str b) a) (str.++ "A" (str.replace "" (int.to.str b) a))))
(check-sat)
