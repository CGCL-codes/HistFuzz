(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (or (and a (not b))))
(check-sat)
