(declare-fun a () String)
(assert (str.in_re a (re.+ (re.++ (str.to_re "AA") (ite (str.in_re a (re.++ (str.to_re a) (re.union (str.to_re "A") (str.to_re "B")))) (re.union (str.to_re "A") (str.to_re "")) (re.union (str.to_re "A") (str.to_re "B")))))))
(check-sat)
