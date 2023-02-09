(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (xor (xor a b) (and a b)))
(check-sat)
