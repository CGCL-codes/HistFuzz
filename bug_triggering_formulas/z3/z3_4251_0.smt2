(declare-fun a (Int) Bool)
(declare-fun b (Int) Bool)
(assert (xor (= a b) (b 0)))
(check-sat)
