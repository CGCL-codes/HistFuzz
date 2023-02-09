(declare-fun s () String)
(assert (str.in_re s (re.++ (re.union (re.inter (re.opt (str.to_re "a")) (str.to_re "")) (str.to_re "b")) (re.diff (str.to_re "b") (str.to_re "")) (str.to_re "AA") (ite (str.in_re s (re.++ (str.to_re (str.replace s "" "")) (re.diff (re.opt (str.to_re "b")) (str.to_re "")))) (re.union (str.to_re "a") (str.to_re "")) (re.++ (str.to_re "aa") (re.* (re.union (str.to_re (str.++ "b" s)) (str.to_re s))))))))
(check-sat)
