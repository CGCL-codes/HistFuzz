(declare-fun a () String)
(assert (not (str.in_re (str.replace_re_all "A" (re.++ (re.* (str.to_re a)) (str.to_re "A")) "B") (re.union (str.to_re "B") (str.to_re a)))))
(check-sat)
