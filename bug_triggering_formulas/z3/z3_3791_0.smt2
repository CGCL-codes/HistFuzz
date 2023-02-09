(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (or (and (not (not b)) (not a))))
(check-sat)
