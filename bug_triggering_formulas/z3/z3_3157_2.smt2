(declare-fun a () Int)
(declare-fun b () Int)
(assert (exists ((c Bool)) (= (/ 0 (- 0.5 (ite c a b))) 1)))
(check-sat)
