(declare-fun a () String)
(assert (str.in_re a (re.diff (re.++ (re.* (str.to_re "b")) (str.to_re "a")) (str.to_re a) (re.++ (str.to_re "a") (str.to_re a)))))
(check-sat)
