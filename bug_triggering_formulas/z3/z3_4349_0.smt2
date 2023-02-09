(declare-fun a () String)
(assert (str.in.re a re.allchar))
(check-sat)
