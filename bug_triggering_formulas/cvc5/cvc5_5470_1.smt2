(declare-fun b () Int)
(assert (exists ((c Int)) (< 0 c (div 0 b))))
(check-sat)
