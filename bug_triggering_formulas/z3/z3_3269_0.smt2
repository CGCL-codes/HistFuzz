(declare-fun x () Int)
(assert (= (div (/ 0 x) 2) (div 50 (+ x 2) 0)))
(check-sat)
