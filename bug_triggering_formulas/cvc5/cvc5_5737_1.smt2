(declare-fun a () Int)
(assert (= (div 1 0) (+ (div 1 a) 1 a) 0))
(check-sat)
