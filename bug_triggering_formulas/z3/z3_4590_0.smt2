(declare-fun a () String)
(assert (not (str.in_re (str.++ "a" a) (re.inter (re.* (str.to_re "ab")) (re.* (str.to_re "a"))))))
(check-sat)
