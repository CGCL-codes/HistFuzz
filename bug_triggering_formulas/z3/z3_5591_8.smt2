(declare-fun a () String)
(assert (not (str.in_re a (re.range a a))))
(check-sat)
