(declare-fun a () String)
(assert (str.in_re (str.++ (str.update (str.++ "AB" a) 0 "A") a) (re.+ (str.to_re "A"))))
(assert (str.in_re a (re.++ (re.* (str.to_re "B")) (str.to_re "A"))))
(check-sat)
