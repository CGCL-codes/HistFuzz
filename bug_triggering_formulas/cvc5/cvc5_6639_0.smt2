(declare-fun a () String)
(assert (= a ""))
(assert (not (str.in_re (str.replace_re_all "b" (re.comp (str.to_re a)) "a") (str.to_re "a"))))
(check-sat)
