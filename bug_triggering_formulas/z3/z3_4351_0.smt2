(declare-fun a () Int)
(declare-fun b () String)
(assert (= a 1))
(assert (str.in.re b (re.inter (str.to.re "") (str.to.re "a"))))
(check-sat)
