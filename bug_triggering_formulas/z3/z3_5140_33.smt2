(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.++ a "z" b) (re.++ (re.* (re.+ (re.union (str.to_re "z")))) (re.++ (ite (str.in_re b (re.++ (re.* (re.union (re.union (str.to_re "aaa") (re.* (str.to_re ""))))) (re.++ (str.to_re "b")))) (str.to_re "z") (re.+ (str.to_re "b"))) (re.* (str.to_re "a"))))))
(check-sat)
