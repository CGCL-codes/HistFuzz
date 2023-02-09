(declare-fun a () String)
(assert (str.in_re (str.++ a "AA") (re.++ (re.* (str.to_re "B")) (str.to_re (str.substr (str.++ "B" a) (str.len a) (str.len a))))))
(check-sat)
