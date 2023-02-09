(declare-fun a () String)
(assert (str.in_re a (re.++ (re.diff (re.++ (re.* (re.union (str.to_re "a") (str.to_re "b"))) (str.to_re "b")) (re.++ (re.inter (re.++ (re.++ (re.* (re.union (str.to_re "a") (str.to_re "b"))) (str.to_re "b")) (str.to_re a)) (re.++ (re.* (re.union (str.to_re "a") (str.to_re "b"))))) (str.to_re "a"))) (str.to_re (ite (str.in_re a (re.union (str.to_re "b"))) "b" "a""b")))))
(check-sat)
