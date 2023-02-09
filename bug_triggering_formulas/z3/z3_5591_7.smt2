(declare-fun a () String)
(assert (str.in_re a (re.inter (re.opt (re.range a a)) (str.to_re "A"))))
(check-sat)
