(declare-fun a () String)
(assert (str.in.re (str.++ "z" a) (re.* (re.+ (re.++ (re.* (str.to.re "b")) (str.to.re "z"))))))
(assert (not (str.in.re a (re.inter (str.to.re "") (re.* (str.to.re "a"))))))
(check-sat)
