(declare-fun a () String)
(declare-fun b () String)
(assert (str.in_re a (re.++ (str.to_re (str.++ a b)) (str.to_re "a") (re.opt (str.to_re "a")))))
(check-sat)
