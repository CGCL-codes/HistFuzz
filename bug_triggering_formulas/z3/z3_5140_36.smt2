(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "z" b) (re.++ (re.* (re.union (str.to_re "z") (str.to_re "a"))) (str.to_re "b"))))
(assert (str.in_re (str.++ a "z" b) (re.++ (re.* (re.union (str.to_re "z") (re.++ (re.union (str.to_re "b") (str.to_re "a")) (re.union (str.to_re "z") (str.to_re "b"))))) (ite (str.in_re b (re.* (str.to_re "z"))) (re.* (re.union (str.to_re "z"))) (re.union (str.to_re "z") (re.++ (re.union (str.to_re "b") (str.to_re "a")) (re.union (str.to_re "z") (str.to_re "b"))))))))
(check-sat)
