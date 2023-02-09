(declare-fun a () String)
(assert (str.contains a "A"))
(assert (str.in_re a (re.++ (re.* (str.to_re "A")) (str.to_re (str.++ "A" a)))))
(check-sat)
