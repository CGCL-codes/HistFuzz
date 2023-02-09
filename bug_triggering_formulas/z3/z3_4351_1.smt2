(declare-fun a () String)
(assert (str.in.re a (re.+ (re.inter (str.to.re "") (str.to.re "a")))))
(check-sat)
