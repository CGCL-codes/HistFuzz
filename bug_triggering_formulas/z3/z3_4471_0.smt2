(declare-fun a () Int)
(assert (= a (div 0 a)))
(check-sat)
