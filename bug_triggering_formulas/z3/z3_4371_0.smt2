(declare-fun a () String)
(assert (str.in.re a (re.* (str.to.re "a"))))
(check-sat)
