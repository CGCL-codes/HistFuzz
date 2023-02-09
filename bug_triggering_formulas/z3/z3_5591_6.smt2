(declare-fun a () String)
(assert (str.in_re a (re.inter (re.range a "B") (str.to_re "A"))))
(check-sat)
