(declare-fun a () String)
(assert (ite true (str.in.re a (str.to.re "")) false))
(assert (str.in.re a (str.to.re "")))
(check-sat)
