(declare-fun b (Int Int Int) Bool)
(declare-fun v () (Set String))
(declare-fun a () (Set String))
(assert (or (xor (subset a v) (b 0 0 0))))
(check-sat)
