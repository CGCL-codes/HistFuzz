(declare-fun ff (Int) Int)
(declare-fun k () Int)
(assert (= 1 (ite (= 0 (ff k)) (ff k) (mod (mod 1 (ff k)) 0))))
(check-sat)
