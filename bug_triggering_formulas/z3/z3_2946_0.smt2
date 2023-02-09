(declare-fun x () String)
(assert (not (str.contains x (str.at x 1))))
(check-sat)
