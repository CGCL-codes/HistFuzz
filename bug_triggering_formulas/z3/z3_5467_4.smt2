(declare-fun a () String)
(assert (str.in_re a (re.++ (re.opt (str.to_re "A")) (str.to_re "A") (str.to_re "A") (str.to_re "A"))))
(check-sat)
