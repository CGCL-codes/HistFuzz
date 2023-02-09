(declare-fun a () String)
(assert (str.in_re a (re.* (re.union (str.to_re "a") (str.to_re (str.replace_re_all "c" (re.* (re.range "a" "u")) a))))))
(assert (not (str.in_re a (re.* (re.comp (str.to_re ""))))))
(check-sat)
