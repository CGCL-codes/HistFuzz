(declare-fun a () String)
(check-sat (not (str.in_re (str.++ "auzb" a) (re.++ (re.* (re.union (re.opt (str.to_re "b")) (re.union (re.++ (str.to_re "b") (re.union (str.to_re "zb") (str.to_re "z") (str.to_re "a"))) (str.to_re a)))) (str.to_re "b")))))
(assert (<= (str.len a) 0))
(check-sat)
