(declare-fun a () Int)
(assert (= (str.++ (str.substr "A" 0 a) "B" (str.substr "A" 0 a)) "B"))
(check-sat)
