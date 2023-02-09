(declare-fun x () String)
(assert (str.in_re (str.++ "A" x) (re.* (re.++ (str.to_re x) (re.* (str.to_re "B"))))))
(check-sat)
