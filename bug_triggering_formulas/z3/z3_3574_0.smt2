(declare-fun n () Int)
(declare-fun x () Int)
(assert (> n 4))
(assert (>= (div 95 x n) n))
(check-sat)
