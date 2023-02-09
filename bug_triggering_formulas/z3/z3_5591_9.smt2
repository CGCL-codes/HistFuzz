(declare-fun a () String)
(assert (= (str.len a) 2))
(assert (not (str.in_re (str.at a 0) (re.range "A" (str.at a 1)))))
(check-sat)
