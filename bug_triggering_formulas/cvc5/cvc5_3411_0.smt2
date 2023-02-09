(declare-fun a () Real)
(declare-fun b () Real)
(assert (= (/ 0 (+ 1 (* a a b))) 0))
(check-sat)
