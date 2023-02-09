(declare-fun s () String)
(assert (str.in.re (str.++ "a" s) (re.* (str.to.re "b"))))
(check-sat)
