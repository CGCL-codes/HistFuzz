(declare-fun a () Int)
(assert (= 1 (div 0 a)))
(check-sat)
