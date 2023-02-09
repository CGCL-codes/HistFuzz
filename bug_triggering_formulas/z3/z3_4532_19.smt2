(declare-fun x () Int)
(declare-fun y () Int)
(assert (= (+ y (* 3 (+ 1 x y) x)) 239))
(check-sat)
