(declare-fun a () String)
(assert (str.in.re a (re.loop (str.to.re "") 5 (- 2))))
(check-sat)
