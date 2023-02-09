(assert (not (str.in_re (str.++ "b" "a") (re.union (str.to_re "z") (str.to_re "b")))))
(check-sat)
