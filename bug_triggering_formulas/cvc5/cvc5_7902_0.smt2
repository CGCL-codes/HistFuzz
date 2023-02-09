(declare-const x Bool)
(declare-fun b () Bool)
(assert (= b x))
(check-sat)
