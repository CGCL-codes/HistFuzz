(declare-fun a () String)
(assert (str.in.re a (re.inter (re.opt re.allchar) (str.to.re "ab"))))
(check-sat)
