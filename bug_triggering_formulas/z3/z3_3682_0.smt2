(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (xor (xor (xor a (xor a b))) b))
(check-sat)
