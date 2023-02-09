(declare-fun x () Int)
(assert (= (mod (+ 130 x) 100) (mod (- 2 (* 7839 x)) 132)))
(check-sat)
