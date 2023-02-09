(declare-fun a () String)
(assert (str.in.re a (re.loop (str.to.re "b") 1 0)))
(assert (> (str.len a) 0))
(check-sat)
