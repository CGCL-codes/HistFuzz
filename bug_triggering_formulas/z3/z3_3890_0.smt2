(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (not (not (not (or (not b) a)))))
(check-sat)
(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (not (not (not (or (not b) a)))))
(check-sat)
