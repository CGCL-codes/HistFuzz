(declare-fun c (Int) Int)
(declare-fun d (Int Int) Int)
(assert (xor (= c (d 0)) (= c (d 1))))
(check-sat)
