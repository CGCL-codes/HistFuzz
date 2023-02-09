(declare-fun s () String)
(assert (not (str.in.re s (re.* (str.to.re "a")))))
(check-sat)
