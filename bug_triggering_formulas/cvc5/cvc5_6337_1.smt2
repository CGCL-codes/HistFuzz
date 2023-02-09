(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re (str.replace_re (str.++ a "zb") (re.union (str.to_re "z") (str.to_re "a") (re.++ (re.* (str.to_re a)) (re.union (str.to_re "z") (str.to_re "a")))) b) (re.opt (str.to_re "bb"))))
(check-sat)
