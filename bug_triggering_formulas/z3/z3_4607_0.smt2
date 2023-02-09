(declare-fun x () String)
(declare-fun y () String)
(assert (str.in_re (str.++ x "c" y) (re.++ (re.* (str.to_re "c")) (re.union (str.to_re "a") (str.to_re "b")))))
(check-sat)
