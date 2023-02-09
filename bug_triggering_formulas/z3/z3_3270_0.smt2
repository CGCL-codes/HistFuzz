(declare-const a Int)
(declare-fun b (Int) Int)
(assert (and (= (* a a) (b a) 1) (= (b 1) (b (- 1)) 0)))
(check-sat)
