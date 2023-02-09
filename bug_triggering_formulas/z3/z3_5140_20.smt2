(declare-fun x () String)
(declare-fun y () String)
(assert (str.in_re x (re.diff (re.union (str.to_re "AB") (str.to_re "C")) (str.to_re "A") (str.to_re y))))
(check-sat)
