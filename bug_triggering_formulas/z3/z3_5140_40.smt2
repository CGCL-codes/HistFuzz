(declare-const a String)
(check-sat)
(assert (str.in_re a (re.++ (str.to_re "BBBA") re.allchar (ite (str.in_re a (re.++ (re.* re.allchar) (str.to_re "A") (str.to_re "B"))) (str.to_re "B") (str.to_re "A")) (str.to_re "AA"))))
(check-sat)
