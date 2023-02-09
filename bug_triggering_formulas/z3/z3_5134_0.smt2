(declare-fun a () String)
(assert (str.in_re a (re.* (re.union (str.to_re "b") (str.to_re (ite (str.in_re a (re.* (re.range "" (ite (str.in_re a (str.to_re "")) "" a)))) "" "a"))))))
(assert (not (str.in_re a (re.* (str.to_re "")))))
(check-sat)
