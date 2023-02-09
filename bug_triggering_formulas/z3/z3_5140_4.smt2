(declare-fun a () String)
(assert (str.in_re (ite (str.in_re (ite (str.in_re a (re.* (re.union (str.to_re "a") (str.to_re "b")))) a "") (re.* (re.union (re.inter (re.range a "u") (str.to_re "b")) (str.to_re "a")))) a "") (str.to_re "b")))
(check-sat)
