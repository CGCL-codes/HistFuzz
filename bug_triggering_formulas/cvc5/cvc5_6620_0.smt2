(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "A") (re.* (re.++ (re.+ (str.to_re "B")) (str.to_re b)))))
(check-sat)
